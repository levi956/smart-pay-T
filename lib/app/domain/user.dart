// ignore_for_file: non_constant_identifier_names

class User {
  String? full_name;
  String? email;
  String? country;

  User({this.full_name, this.email, this.country});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      full_name: json['full_name'],
      email: json['email'],
      country: json['country'],
    );
  }
}
