class UserProfile {
  final int id;
  final String email;
  final String firstname;
  final String lastname;
  final String avatar;
  UserProfile({this.id, this.email, this.firstname, this.lastname, this.avatar});

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      email: json['email'],
      firstname: json['first_name'],
      lastname: json['last_name'],
      avatar: json['avatar'],
    );
  }
}