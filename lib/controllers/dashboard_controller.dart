import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/health_data.dart';

class DashboardController extends GetxController {
  final RxList<HealthData> weeklyStats = <HealthData>[].obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchGraphData();
  }

  Future<void> fetchGraphData() async {
    try {
      isLoading.value = true;
      // Using ReqRes API as suggested for real API integration on the graph
      final response = await http.get(Uri.parse('https://reqres.in/api/users?per_page=7'));
      
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List users = data['data'];
        final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
        
        weeklyStats.value = users.asMap().entries.map((entry) {
          int index = entry.key;
          var user = entry.value;
          // Create dummy health metrics based on user data
          return HealthData(
            day: index < days.length ? days[index] : 'Day ${index + 1}',
            steps: 4000 + (user['id'] * 850 as int) % 6000,
            calories: 150.0 + (user['id'] * 45 % 300),
          );
        }).toList();
      } else {
        _loadFallbackData();
      }
    } catch (e) {
      print('Error fetching graph data: $e');
      _loadFallbackData();
    } finally {
      isLoading.value = false;
    }
  }

  void _loadFallbackData() {
    final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    weeklyStats.value = [
      HealthData(day: 'Mon', steps: 4500, calories: 180),
      HealthData(day: 'Tue', steps: 6000, calories: 250),
      HealthData(day: 'Wed', steps: 3500, calories: 150),
      HealthData(day: 'Thu', steps: 8000, calories: 320),
      HealthData(day: 'Fri', steps: 7200, calories: 280),
      HealthData(day: 'Sat', steps: 5000, calories: 200),
      HealthData(day: 'Sun', steps: 9500, calories: 400),
    ];
  }
}
