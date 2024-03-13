import 'package:drone/views/constant/const.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

class AddDisasterController extends GetxController {
  final ref = Firestore.instance.collection('DisasterData');
  final personName = TextEditingController().obs;
  final phoneNumber = TextEditingController().obs;
  final location = TextEditingController().obs;
  final disasterType = TextEditingController().obs;
  final missionName = TextEditingController().obs;
  final areaType = TextEditingController().obs;

  clearText() {
    personName.value.clear();
    phoneNumber.value.clear();
    location.value.clear();
    disasterType.value.clear();
    missionName.value.clear();
    areaType.value.clear();
  }

  addData(String personName, String phoneNumber, String location,
      String disasterType, String missionName, String areaType) async {
    var id = generateRandomString();
    ref.document(id).set({
      "personName": personName,
      "phoneNumber": phoneNumber,
      "location": location,
      "disasterType": disasterType,
      "missionName": missionName,
      "areaType": areaType,
      "id": id,
      "Status": "Assigned"
    }).then((value) {
      clearText();
      Get.snackbar(
        'Info',
        'Added successfully',
        backgroundColor: Colors.white54,
        snackPosition: SnackPosition.BOTTOM,
      );
    }).catchError((error) {
      Get.snackbar(
        'Info',
        error.toString(),
        backgroundColor: Colors.white54,
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }

  @override
  void dispose() {
    personName.close();
    phoneNumber.close();
    location.close();
    disasterType.close();
    missionName.close();
    areaType.close();
    super.dispose();
  }
}
