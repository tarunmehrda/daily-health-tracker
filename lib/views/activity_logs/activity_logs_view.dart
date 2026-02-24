import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/activity_controller.dart';
import '../../utils/theme.dart';
import '../../widgets/activity_card.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ActivityLogsView extends StatelessWidget {
  const ActivityLogsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ActivityController>();
    final scrollController = ScrollController();

    scrollController.addListener(() {
      if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 200) {
        controller.fetchActivities();
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Logs'),
      ),
      body: Obx(() {
        if (controller.activities.isEmpty && controller.isLoading.value) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text(
                  'Fetching your activities...',
                  style: TextStyle(color: AppTheme.secondaryTextColor),
                ),
              ],
            ),
          );
        }

        if (controller.activities.isEmpty && !controller.isLoading.value) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.history_rounded, size: 64, color: AppTheme.secondaryTextColor),
                const SizedBox(height: 16),
                const Text('No activities found'),
                TextButton(
                  onPressed: controller.refreshActivities,
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: controller.refreshActivities,
          color: AppTheme.primaryColor,
          backgroundColor: AppTheme.cardColor,
          child: AnimationLimiter(
            child: ListView.builder(
              controller: scrollController,
              padding: const EdgeInsets.all(24),
              physics: const AlwaysScrollableScrollPhysics(), // Important for RefreshIndicator
              itemCount: controller.activities.length + (controller.hasMore.value ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == controller.activities.length) {
                  return Obx(() => controller.isLoading.value 
                    ? const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 32.0),
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : const SizedBox(height: 80)); // Spacer at the bottom
                }

                final activity = controller.activities[index];
                return AnimationConfiguration.staggeredList(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  child: SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: ActivityCard(activity: activity),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      }),
    );
  }
}
