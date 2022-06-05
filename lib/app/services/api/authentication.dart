// import 'package:smart_pay/app/services/api/base_helper.dart';
// import 'package:smart_pay/app/services/domain/data.dart';
// import 'package:smart_pay/app/services/domain/service_response.dart';

// import '../../domain/user.dart';

// class Authentication {
//   final ApiBaseHelper _helper = ApiBaseHelper();

//   final String _baseUrl = '';
//   final Map<String, String> _header = {'Content-type': 'application/json'};

//   // login a user
//   // takes in email and password
//   login(Map credentials) async {
//     final _response = await _helper.postL(
//       url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/login',
//       headers: _header,
//       body: credentials,
//     );
//     return _response;
//   }

//   Future<ServiceResponse> getDemo() async {
//     final _response = await _helper.get();
//     ServiceResponse m = ServiceResponse();
//     print(m.data);
//     return ServiceResponse(
//       status: _response['status'],
//       message: _response['message'],
//       data: Data.fromJson(_response['data']),
//     );
//   }

//   Future<dynamic> register(Map credentials) async {
//     final _response = await _helper.postC(
//       url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/register',
//       headers: _header,
//       body: credentials,
//     );
//     return _response;
//   }

//   // takes in user email
//   // returns token
//   Future<dynamic> getToken(Map<String, dynamic> emailCred) async {
//     final _response = await _helper.postT(
//       url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/email',
//       headers: _header,
//       body: emailCred,
//     );
//     return _response;
//   }

//   // takes in user email and token
//   // returns success and user email
//   Future<bool> verifyToken(Map tokenCred) async {
//     final _response = await _helper.postV(
//       url: 'https://smart-pay-mobile.herokuapp.com/api/v1/auth/email/verify',
//       headers: _header,
//       body: tokenCred,
//     );
//     return _response;
//   }
// }
