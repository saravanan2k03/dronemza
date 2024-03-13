import 'package:firedart/firedart.dart';
import 'package:flutter/foundation.dart';
import 'package:get/state_manager.dart';

class RequestPageController extends GetxController {
  var ref = Firestore.instance.collection('DisasterData');
  RxList lst = [].obs;
  getData() {
    // lst.clear();
    ref.get().then((value) => lst.value = value.toList());
    if (kDebugMode) {
      print(lst);
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
