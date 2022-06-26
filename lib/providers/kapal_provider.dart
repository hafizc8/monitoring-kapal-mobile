import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:monitoring_kapal/my_dio.dart';
import 'package:monitoring_kapal/providers/response_format.dart';
import 'package:monitoring_kapal/url.dart';

class KapalProvider extends MyDio {
  /// Endpoint Get Data Kapal
  Future<ResponseFormat> getDataKapalApi() async {
    try {
      Response res = await myDio.get(
        MyUrl.getDataKapalUrl
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

  /// Endpoint Get Data Kapal
  Future<ResponseFormat> updateDataKapalApi({required String idKapal, required String tglTiba, required String tglBerangkat, required String tglTerima, required String tglDiserahkan}) async {
    try {
      Response res = await myDio.post(
        MyUrl.saveDataKapalUrl,
        data: jsonEncode({
          "id_kapal": idKapal,
          "tgl_tiba": tglTiba,
          "tgl_berangkat": tglBerangkat,
          "tgl_terima": tglTerima,
          "tgl_diserahkan": tglDiserahkan,
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