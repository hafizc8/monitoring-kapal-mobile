import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_kapal/providers/login_provider.dart';
import 'package:monitoring_kapal/providers/response_format.dart';
import 'package:monitoring_kapal/routes/app_pages.dart';
import 'package:monitoring_kapal/widgets/error_widget.dart';
import 'package:monitoring_kapal/widgets/success_widget.dart';

class LoginController extends GetxController with StateMixin {
  TextEditingController usernameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  dynamic login() async {
    if (usernameC.text.isEmpty || usernameC.text == "") {
      CustomErrorWidget(message: "Username tidak boleh kosong");
      return;
    }

    if (passwordC.text.isEmpty || passwordC.text == "") {
      CustomErrorWidget(message: "Password tidak boleh kosong");
      return;
    }

    change(null, status: RxStatus.loading());
    ResponseFormat res = await LoginProvider().loginApi(username: usernameC.text, password: passwordC.text);
    
    change(null, status: RxStatus.success());

    if (res.message == "SUCCESS") {
      // level admin
      if (res.data['data']['level'] == '1') {
        Get.offAllNamed(Routes.HOME);
      } 
      // level operator
      else {
        Get.offAllNamed(Routes.HOME_OPERATOR);
      }

      CustomSuccessWidget(message: "Berhasil login");
    } else {
      CustomErrorWidget(message: "Username atau password salah");
    }
  }
}