class RegisterModel {
  String? fullName;
  String? email;
  String? country;
  String? password;
  String? deviceName = 'web';

  RegisterModel(
      {this.fullName,
      this.country,
      this.deviceName,
      this.email,
      this.password});

  factory RegisterModel.toJson(Map<String, dynamic> json) {
    return RegisterModel();
  }
}
