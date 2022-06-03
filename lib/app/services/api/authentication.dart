import 'package:smart_pay/app/services/api/base_helper.dart';

import '../../domain/user.dart';

class Authentication {
  final ApiBaseHelper _helper = ApiBaseHelper();

  final String _baseUrl = '';
  final Map<String, String> _header = {'Accept': 'application/json'};

  // login a user
  // takes in email and password
  login(Map credentials) async {
    final _response = await _helper.postL(
      url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/login',
      headers: _header,
      body: credentials,
    );
    return _response;
  }

  Future<User> register(Map credentials) async {
    final _response = await _helper.postC(
      url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/register',
      headers: _header,
      body: credentials,
    );
    return _response;
  }

  // takes in user email
  // returns token
  Future<String> getToken(Map emailCred) async {
    final _response = await _helper.postT(
      url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/email',
      headers: _header,
      body: emailCred,
    );
    return _response;
  }

  // takes in user email and token
  // returns success and user email
  Future<bool> verifyToken(Map tokenCred) async {
    final _response = await _helper.postV(
      url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/email/verify',
      headers: _header,
      body: tokenCred,
    );
    return _response;
  }
}
