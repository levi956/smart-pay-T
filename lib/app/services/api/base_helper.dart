// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:smart_pay/app/domain/user.dart';

class ApiBaseHelper {
  // get request
  Future<dynamic> get({String? url, Map<String, String>? headers}) async {
    var responseJson;

    try {
      final response = await http.get(
        Uri.parse(url!),
        headers: headers,
      );
      // responseJson = _returnRegisterResponse(response);
    } catch (e) {
      print(e);
    }
    return responseJson;
  }

  // post register user credentials
  Future<dynamic> postC(
      {String? url, Map<String, String>? headers, Object? body}) async {
    var responseJson;

    try {
      final response = await http.post(
        Uri.parse(url!),
        headers: headers,
        body: jsonEncode(body),
      );
      responseJson = _returnRegisterResponse(response);
    } catch (e) {
      print(e);
    }
    return responseJson;
  }

  // post get email token
  Future<dynamic> postT(
      {String? url, Map<String, String>? headers, Object? body}) async {
    var responseJson;
    print(body);
    print(jsonEncode(body));

    try {
      final response = await http.post(
        Uri.parse(url!),
        headers: headers,
        body: jsonEncode(body),
      );

      print(response.body);
      responseJson = _returnTokenResponse(response);
    } catch (e) {
      print(e);
    }
    return responseJson;
  }

  // post verify token
  Future<dynamic> postV(
      {String? url, Map<String, String>? headers, Object? body}) async {
    var responseJson;

    try {
      final response = await http.post(
        Uri.parse(url!),
        headers: headers,
        body: jsonEncode(body),
      );
      responseJson = _returnVerifyTokenResponse(response);
    } catch (e) {
      print(e);
    }
    return responseJson;
  }

  // post login
  Future<dynamic> postL(
      {String? url, Map<String, String>? headers, Object? body}) async {
    var responseJson;

    try {
      final response = await http.post(
        Uri.parse(url!),
        headers: headers,
        body: jsonEncode(body),
      );
      // responseJson = _returnLoginResponse(response);
    } catch (e) {
      print(e);
    }
    return responseJson;
  }
}

dynamic _returnRegisterResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:

      // original response
      dynamic responseJson = jsonDecode(response.body);

      // accessing  data map in accordance to response
      dynamic userResponse = responseJson['data'];

      // accessing user map in accordacne to response
      dynamic body = userResponse['user'];

      dynamic t = User.fromJson(body);

      return t;

    default:
      throw Exception('error register');
  }
}

String _returnTokenResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:

      // original response
      dynamic responseJson = jsonDecode(response.body);

      // accessing  data map in accordance to response
      dynamic userResponse = responseJson['data'];
      dynamic data = userResponse['token'] as String;

      return data;
    // break;

    default:
      throw Exception('error token');
  }
}

bool _returnVerifyTokenResponse(http.Response response) {
  switch (response.statusCode) {
    case 200:

      // original response
      dynamic responseJson = jsonDecode(response.body);

      // accessing data map in accordance to response
      var verifyResponse = responseJson['status'];

      return verifyResponse;

    default:
      throw Exception('error');
  }
}
