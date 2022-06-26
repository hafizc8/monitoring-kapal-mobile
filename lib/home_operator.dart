import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:monitoring_kapal/controller/kapal_controller.dart';
import 'package:monitoring_kapal/models/kapal_model.dart';
import 'package:monitoring_kapal/routes/app_pages.dart';

class HomeOperator extends StatelessWidget {
  HomeOperator({ Key? key }) : super(key: key);

  final controller = Get.put(KapalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplikasi Monitoring Kapal"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Column(
            children: [
              controller.obx(
                (state) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.kapals.length,
                    itemBuilder: (ctx, i) {
                      return KapalCard(data: controller.kapals[i]);
                    },
                  );
                },
                onLoading: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KapalCard extends StatelessWidget {
  const KapalCard({Key? key, required this.data}) : super(key: key);

  final KapalModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.namaKapal ?? "Nama Kapal",
            style: const TextStyle(
              color: Color(0xFF313131),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Status Dokumen",
                style: TextStyle(
                  color: Color(0xFF313131),
                  fontSize: 14,
                ),
              ),
              Text(
                data.statusDokumen ?? "Status Dokumen",
                style: TextStyle(
                  color: data.statusDokumen == 'Belum Lengkap' ? Colors.yellow.shade800 : Colors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tanggal Tiba",
                    style: TextStyle(
                      color: Color(0xFF818181),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data.tglTiba ?? "Belum diisi",
                    style: const TextStyle(
                      color: Color(0xFF313131),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tanggal Berangkat",
                    style: TextStyle(
                      color: Color(0xFF818181),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data.tglBerangkat ?? "Belum diisi",
                    style: const TextStyle(
                      color: Color(0xFF313131),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Tanggal Input",
                    style: TextStyle(
                      color: Color(0xFF818181),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data.tglInput ?? "Belum diisi",
                    style: const TextStyle(
                      color: Color(0xFF313131),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(height: 35),
          InkWell(
            onTap: () => Get.toNamed(Routes.EDIT_KAPAL, arguments: {"idKapal": data.idKapal, "namaKapal": data.namaKapal}),
            child: const Text(
              "Ubah Data Kapal",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 3),
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}
