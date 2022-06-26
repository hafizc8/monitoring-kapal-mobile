import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:monitoring_kapal/controller/kapal_controller.dart';
import 'package:monitoring_kapal/providers/kapal_provider.dart';
import 'package:monitoring_kapal/providers/response_format.dart';
import 'package:monitoring_kapal/widgets/error_widget.dart';
import 'package:monitoring_kapal/widgets/success_widget.dart';

class EditKapalController extends GetxController with StateMixin {
  Rx<DateTime> tglTiba         = DateTime.now().obs;
  Rx<DateTime> tglBerangkat    = DateTime.now().obs;
  Rx<DateTime> tglTerima       = DateTime.now().obs;
  Rx<DateTime> tglDiserahkan   = DateTime.now().obs;
  RxString idKapal             = "".obs;
  RxString namaKapal           = "".obs;

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onReady() {
    final arg = Get.arguments;
    idKapal.value = arg['idKapal'];
    namaKapal.value = arg['namaKapal'];

    super.onReady();
  }

  Future pickTglTiba(BuildContext context) async {
    final initialDate = tglTiba.value;
    final newDate = await showDatePicker(
      context: context, 
      initialDate: initialDate, 
      firstDate: DateTime(1910),
      lastDate: DateTime.now(),
    );

    if (newDate == null) return;

    tglTiba.value = newDate;
  }

  Future pickTglBerangkat(BuildContext context) async {
    final initialDate = tglBerangkat.value;
    final newDate = await showDatePicker(
      context: context, 
      initialDate: initialDate, 
      firstDate: DateTime(1910),
      lastDate: DateTime.now(),
    );

    if (newDate == null) return;

    tglBerangkat.value = newDate;
  }

  Future pickTglTerima(BuildContext context) async {
    final initialDate = tglTerima.value;
    final newDate = await showDatePicker(
      context: context, 
      initialDate: initialDate, 
      firstDate: DateTime(1910),
      lastDate: DateTime.now(),
    );

    if (newDate == null) return;

    tglTerima.value = newDate;
  }

  Future pickTglDiserahkan(BuildContext context) async {
    final initialDate = tglDiserahkan.value;
    final newDate = await showDatePicker(
      context: context, 
      initialDate: initialDate, 
      firstDate: DateTime(1910),
      lastDate: DateTime.now(),
    );

    if (newDate == null) return;

    tglDiserahkan.value = newDate;
  }

  dynamic updateDataKapal() async {
    change(null, status: RxStatus.loading());

    ResponseFormat res = await KapalProvider().updateDataKapalApi(
      idKapal: idKapal.value, 
      tglTiba: DateFormat("yyyy-MM-dd").format(tglTiba.value),
      tglBerangkat: DateFormat("yyyy-MM-dd").format(tglBerangkat.value),
      tglTerima: DateFormat("yyyy-MM-dd").format(tglTerima.value),
      tglDiserahkan: DateFormat("yyyy-MM-dd").format(tglDiserahkan.value),
    );

    change(null, status: RxStatus.success());

    if (res.message == 'SUCCESS') {
      final kapalC = Get.find<KapalController>();
      await kapalC.getDataKapal();

      Get.back();
      CustomSuccessWidget(message: "Berhasil mengupdate data kapal");
    } else {
      CustomErrorWidget(message: "Gagal mengupdate data kapal, silahkan coba beberapa saat lagi");
    }
  }
}