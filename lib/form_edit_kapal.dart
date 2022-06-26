import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:monitoring_kapal/controller/edit_kapal_controller.dart';

class FormEditKapal extends StatelessWidget {
  FormEditKapal({Key? key}) : super(key: key);

  final controller = Get.put(EditKapalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ubah Data Kapal"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Nama Kapal",
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
                // controller: controller.usernameC,
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
                  "Tanggal Tiba",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF313131),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => InkWell(
                  onTap: () => controller.pickTglTiba(context),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15, right: 10, top: 20,),
                    child: Text(
                      DateFormat("dd/MMM/yyyy").format(controller.tglTiba.value),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF313131),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f3f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Tanggal Berangkat",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF313131),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => InkWell(
                  onTap: () => controller.pickTglBerangkat(context),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15, right: 10, top: 20,),
                    child: Text(
                      DateFormat("dd/MMM/yyyy").format(controller.tglBerangkat.value),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF313131),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f3f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Tanggal Diterima",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF313131),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => InkWell(
                  onTap: () => controller.pickTglTerima(context),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15, right: 10, top: 20,),
                    child: Text(
                      DateFormat("dd/MMM/yyyy").format(controller.tglTiba.value),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF313131),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f3f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ),
              ),
              const SizedBox(height: 15),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Tanggal Diserahkan",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF313131),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              const SizedBox(height: 10),
              Obx(
                () => InkWell(
                  onTap: () => controller.pickTglDiserahkan(context),
                  child: Container(
                    height: 55,
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 15, right: 10, top: 20,),
                    child: Text(
                      DateFormat("dd/MMM/yyyy").format(controller.tglTiba.value),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF313131),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfff3f3f4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                ),
              ),

              const SizedBox(height: 15),
              controller.obx(
                (state) {
                  return ElevatedButton(
                    onPressed: () {
                      controller.updateDataKapal();
                    },
                    child: const Text("Simpan"),
                  );
                },
                onLoading: const Center(child: CircularProgressIndicator()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
