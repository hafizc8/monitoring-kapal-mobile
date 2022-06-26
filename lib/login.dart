import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monitoring_kapal/controller/login_controller.dart';
import 'package:monitoring_kapal/routes/app_pages.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://raw.githubusercontent.com/hafizc8/monitoring-kapal/master/assets/img/logo-company.png",
              width: 200,
            ),
            const SizedBox(height: 20),

            const Text(
              "Aplikasi Monitoring Kapal pada PT. Pelayaran Laksita Aditya Parama",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFF313131),
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),

            const SizedBox(
              width: double.infinity,
              child: Text(
                "Username",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF313131),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: controller.usernameC,
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 15),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF313131),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: controller.passwordC,
              obscureText: true,
              decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),

            const SizedBox(height: 30),
            controller.obx(
              (state) {
                return SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.login();
                    },
                    child: const Text("Masuk"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                );
              },
              onLoading: const Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
