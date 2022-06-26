import 'package:get/get.dart';
import 'package:monitoring_kapal/models/kapal_model.dart';
import 'package:monitoring_kapal/providers/kapal_provider.dart';
import 'package:monitoring_kapal/providers/response_format.dart';
import 'package:monitoring_kapal/widgets/error_widget.dart';

class KapalController extends GetxController with StateMixin {
  RxList<KapalModel> kapals = <KapalModel>[].obs;

  @override
  void onInit() {
    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onReady() {
    getDataKapal();
    super.onReady();
  }

  dynamic getDataKapal() async {
    change(null, status: RxStatus.loading());
    
    ResponseFormat res = await KapalProvider().getDataKapalApi();

    change(null, status: RxStatus.success());

    kapals.value = [];

    if (res.message == 'SUCCESS') {
      for (var item in res.data['data']) {
        kapals.add(KapalModel.fromJson(item));
      }
    } else {
      CustomErrorWidget(message: "Gagal mendapatkan data kapal");
    }
  }
}