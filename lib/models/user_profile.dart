class UserProfile {
  final String id;
  final String name;
  final String email;
  final String photoUrl;

  UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.photoUrl,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      photoUrl: json['photoUrl'] ?? '',
    );
  }
}
