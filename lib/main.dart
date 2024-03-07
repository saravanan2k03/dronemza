import 'package:drone/views/Screen/MainPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseAuth.initialize(
      "AIzaSyBC_Y5UbvgIvJK7dNJv8UnwakwkdDnfKOw", VolatileStore());
  Firestore.initialize("angrybirdpro-50d0e");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Drone',
      home: MainPage(),
    );
  }
}
