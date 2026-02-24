class Activity {
  final int id;
  final String title;
  final String description;
  final String type;
  final DateTime timestamp;
  final String duration;
  final int calories;

  Activity({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.timestamp,
    required this.duration,
    required this.calories,
  });

  factory Activity.fromJson(Map<String, dynamic> json) {
    // Mapping JSONPlaceholder to Activity
    return Activity(
      id: json['id'],
      title: json['title'],
      description: json['body'],
      type: json['id'] % 2 == 0 ? 'Running' : 'Walking',
      timestamp: DateTime.now().subtract(Duration(hours: json['id'])),
      duration: '${json['id'] * 5} mins',
      calories: json['id'] * 12,
    );
  }
}
