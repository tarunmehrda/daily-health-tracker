import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/activity.dart';

class ActivityController extends GetxController {
  final RxList<Activity> activities = <Activity>[].obs;
  final RxBool isLoading = false.obs;
  final RxBool hasMore = true.obs;
  int _page = 1;

  @override
  void onInit() {
    super.onInit();
    fetchActivities();
  }

  Future<void> fetchActivities() async {
    if (isLoading.value || !hasMore.value) return;

    try {
      isLoading.value = true;
      // Using JSONPlaceholder /posts for mock activity logs
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts?_page=$_page&_limit=10'),
      );

      if (response.statusCode == 200) {
        List<dynamic> jsonList = json.decode(response.body);
        List<Activity> fetchedActivities = jsonList.map((j) => Activity.fromJson(j)).toList();

        if (fetchedActivities.length < 10) {
          hasMore.value = false;
        }

        activities.addAll(fetchedActivities);
        _page++;
      }
    } catch (e) {
      print('Error fetching activities: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshActivities() async {
    _page = 1;
    activities.clear();
    hasMore.value = true;
    await fetchActivities();
  }
}
