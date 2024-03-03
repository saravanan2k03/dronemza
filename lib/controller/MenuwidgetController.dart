// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MenuWidgetController extends GetxController {
  RxInt index = 0.obs;

  ChancePage(RxInt val) {
    index.value = val.value;
  }
}
