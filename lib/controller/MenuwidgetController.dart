// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class MenuWidgetController extends GetxController {
  RxInt index = 0.obs;

  ChancePage(RxInt val) {
    index.value = val.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
