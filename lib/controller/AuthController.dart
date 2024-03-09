import 'package:drone/views/Screen/MainPage.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  var auth = FirebaseAuth.instance;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  signInUser(email, password) async {
    auth.signIn(email, password).then((user) {
      Get.snackbar(
        'Login',
        'Login successfully',
        backgroundColor: Colors.white54,
        snackPosition: SnackPosition.BOTTOM,
      );
      Get.offAll(const MainPage());

      if (kDebugMode) {
        print('Sign-in successful: $user');
      }
    }).catchError((error) {
      Get.snackbar(
        'Login',
        'Invalid email or password',
        backgroundColor: Colors.white54,
        snackPosition: SnackPosition.BOTTOM,
      );
      if (kDebugMode) {
        print('Sign-in failed: $error');
      }
    });
  }

  @override
  void dispose() {
    emailController.close();
    passwordController.close();
    super.dispose();
  }

  signUpUser(email, password) {
    auth.signUp(email, password);
  }
}
