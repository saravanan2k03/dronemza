import 'package:get/state_manager.dart';

class SpeedometerController extends GetxController {
  RxDouble speed = 0.0.obs;

  changeSpeed(RxDouble val) => speed.value = val.value;

  @override
  void onInit() {
    changeSpeed(RxDouble(0.0));
    super.onInit();
  }
}
