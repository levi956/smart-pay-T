// ignore_for_file: non_constant_identifier_names

class User {
  String? fullName;
  String? email;
  String? country;
  String? id;

  User({this.fullName, this.email, this.country, this.id});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        fullName: json['full_name'],
        email: json['email'],
        id: json['id'],
        country: json['country']);
  }
}
