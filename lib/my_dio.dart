import 'package:dio/dio.dart';

class MyDio {
  Dio myDio = Dio();

  MyDio() {
    myDio.interceptors.add(
      LogInterceptor(
        requestHeader: true,
        requestBody: true, 
        responseHeader: true,
        responseBody: true,
      )
    );
  }
}