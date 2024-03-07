import 'package:firedart/firedart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AuthController extends GetxController {
  var auth = FirebaseAuth.instance;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  signInUser(email, password) async {
    auth.signIn(email, password).then((user) {
      Get.snackbar('Login', 'Login successfully');
      if (kDebugMode) {
        print('Sign-in successful: $user');
      }
    }).catchError((error) {
      Get.snackbar('Login', 'Invalid email or password');
      if (kDebugMode) {
        print('Sign-in failed: $error');
      }
    });
  }

  signUpUser(email, password) {
    auth.signUp(email, password);
  }
}
