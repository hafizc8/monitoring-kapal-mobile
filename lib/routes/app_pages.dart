import 'package:get/get.dart';
import 'package:monitoring_kapal/form_edit_kapal.dart';
import 'package:monitoring_kapal/home.dart';
import 'package:monitoring_kapal/home_operator.dart';
import 'package:monitoring_kapal/login.dart';
part 'app_routes.dart';

class AppPages {
  late final initial = Routes.LOGIN;

  static final routes = [
    /// General Page
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.HOME_OPERATOR,
      page: () => HomeOperator(),
    ),
    GetPage(
      name: Routes.EDIT_KAPAL,
      page: () => FormEditKapal(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
  ];
}
