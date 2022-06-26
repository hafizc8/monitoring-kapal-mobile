import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:monitoring_kapal/my_dio.dart';
import 'package:monitoring_kapal/providers/response_format.dart';
import 'package:monitoring_kapal/url.dart';

class LoginProvider extends MyDio {
  /// Endpoint Login
  Future<ResponseFormat> loginApi({required String username, required String password}) async {
    try {
      Response res = await myDio.post(
        MyUrl.loginUrl,
        data: jsonEncode({
          "username": username,
          "password": password,
        }),
      );

      if (res.statusCode == 200) {
        if (res.data['status'] == 'success') {
          return ResponseFormat(
            statusCode: res.statusCode,
            message: "SUCCESS",
            data: res.data,
          );
        }
      }

      return ResponseFormat(
        statusCode: res.statusCode,
        message: "ERROR",
      );
    } catch (e) {
      return ResponseFormat(
        statusCode: 500,
        message: "INTERNAL_ERROR",
      );
    }
  }
}