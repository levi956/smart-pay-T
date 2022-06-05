// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:smart_pay/app/services/domain/service_response.dart';

import '../domain/data.dart';

class Auth {
  final Dio _dio = Dio();

  Future<ServiceResponse> getEmailToken({Map<String, dynamic>? cred}) async {
    const _baseUrl = 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/email';
    var _response;
    try {
      final _response = await _dio.post(_baseUrl, data: cred);

      var serviceMessage = _response.data['message'];
      var serviceStatus = _response.data['status'];
      dynamic serviceData = _response.data['data'];

      return ServiceResponse(
        status: true,
        message: serviceMessage,
        data: serviceData,
      );
    } on DioError catch (e) {
      print(e);
      return ServiceResponse(
        status: false,
        message: e.error.toString(),
      );
    } catch (e) {
      if (e is SocketException) {
        return ServiceResponse(status: false, message: "internet error");
      }
    }
    return ServiceResponse(status: false, message: "Something went wrong");
  }

  Future<ServiceResponse> verifyEmailToken({Map<String, dynamic>? cred}) async {
    const _baseUrl =
        'https://smart-pay-mobile.herokuapp.com/api/v1/auth/email/verify';
    var _response;
    try {
      final _response = await _dio.post(_baseUrl, data: cred);
      print(_response.data);
      // parse response
      var serviceMessage = _response.data['message'];
      var serviceStatus = _response.data['status'];
      dynamic serviceData = _response.data['data'];

      return ServiceResponse(
        status: serviceStatus,
        message: serviceMessage,
        data: Data.fromJson(serviceData),
      );
    } on DioError catch (e) {
      print(e);
      return ServiceResponse(
        status: false,
        message: e.error.toString(),
      );
    } catch (e) {
      if (e is SocketException) {
        return ServiceResponse(status: false, message: "internet error");
      }
    }
    return ServiceResponse(status: false, message: "Something went wrong");
  }

  Future<ServiceResponse> register({Map<String, dynamic>? cred}) async {
    const _baseUrl =
        'https://smart-pay-mobile.herokuapp.com/api/v1/auth/register';
    var _response;
    try {
      final _response = await _dio.post(_baseUrl, data: cred);
      print(_response.data);

      // parse response
      var serviceMessage = _response.data['message'];
      var serviceStatus = _response.data['status'];
      dynamic serviceData = _response.data['data'];

      return ServiceResponse(
        status: serviceStatus,
        message: serviceMessage,
        data: Data.fromJson(serviceData),
      );
    } on DioError catch (e) {
      print(e);
      return ServiceResponse(
        status: false,
        message: e.error.toString(),
      );
    } catch (e) {
      if (e is SocketException) {
        return ServiceResponse(status: false, message: "internet error");
      }
    }
    return ServiceResponse(status: false, message: "Something went wrong");
  }
}
