import 'package:drone/views/constant/const.dart';
import 'package:drone/views/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/AuthController.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final mission = TextEditingController();
  AuthController controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(234, 0, 0, 0),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height(context, 0.80),
                width: width(context, 0.80),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 47, 46, 46),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: width(context, 0.40),
                      decoration: const BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Welcome To AngryBird Pro ...",
                            style: TextStyle(
                                color: Colors.blueGrey[300],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                  width: width(context, 0.25),
                                  child: customtextfieldsurfixicon(
                                      context,
                                      "Email",
                                      controller.emailController.value,
                                      Icons.person)),
                              SizedBox(
                                height: height(context, 0.05),
                              ),
                              SizedBox(
                                  width: width(context, 0.25),
                                  child: customtextfieldsurfixicon(
                                      context,
                                      "Password",
                                      controller.passwordController.value,
                                      Icons.remove_red_eye_sharp)),
                              SizedBox(
                                height: height(context, 0.10),
                              ),
                              MaterialButton(
                                color: Colors.white70,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                elevation: 5.0,
                                minWidth: 200.0,
                                height: 35,
                                onPressed: () {
                                  controller.signInUser(
                                      controller.emailController.value.text
                                          .toString(),
                                      controller.passwordController.value.text
                                          .toString());
                                },
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  child: Text("Login",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ),
                              SizedBox(
                                height: height(context, 0.04),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: width(context, 0.02),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Create a new account ",
                                      style: TextStyle(
                                          color: Colors.blueGrey[300],
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 05),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 20,
                                      color: Colors.blueGrey[300],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: width(context, 0.40),
                      decoration: const BoxDecoration(
                        // color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                        child: Image.asset(
                          "images/rescue.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
