import 'package:drone/views/constant/const.dart';

import 'package:drone/views/Screen/RequestPage.dart';
import 'package:flutter/material.dart';

import '../widgets/container.dart';
import '../widgets/textfield.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  final name = TextEditingController();
  final location = TextEditingController();
  final mobile = TextEditingController();
  final dis_type = TextEditingController();
  final loc_type = TextEditingController();
  final mission = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Center(
        child: customcontainer(
            height: height(context, 0.8),
            width: width(context, 0.8),
            color: const Color.fromARGB(255, 80, 80, 80).withOpacity(0.3),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Register Details",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              fontSize: width(context, 0.024))),
                    ],
                  ),
                ),
                SizedBox(
                  height: height(context, 0.04),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: width(context, 0.3),
                          child: SizedBox(
                            width: 20,
                            child: customtextfield(
                                context, "Person Name", name, Icons.person),
                          )),
                      SizedBox(
                          width: width(context, 0.3),
                          child: customtextfield(
                              context, "Mobile No", mobile, Icons.call))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: width(context, 0.3),
                        child: customtextfield(context, "Location", location,
                            Icons.location_on_outlined),
                      ),
                      SizedBox(
                          width: width(context, 0.3),
                          child: customtextfield(context, "Disaster Type",
                              dis_type, Icons.dynamic_form_outlined))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          width: width(context, 0.3),
                          child: customtextfield(context, "Mission Name",
                              mission, Icons.api_sharp)),
                      SizedBox(
                          width: width(context, 0.3),
                          child: customtextfield(context, "Type of Area",
                              loc_type, Icons.location_city))
                    ],
                  ),
                ),
                SizedBox(height: height(context, 0.05)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: height(context, 0.06),
                      width: width(context, 0.1),
                      child: MaterialButton(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RequestPage()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Register",
                                  style: TextStyle(color: Colors.white)),
                              Icon(Icons.app_registration,
                                  color: Color.fromARGB(255, 255, 255, 255))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: height(context, 0.06),
                      width: width(context, 0.1),
                      child: MaterialButton(
                          color: Colors.green,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RequestPage()));
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("View Registration",
                                  style: TextStyle(color: Colors.white)),
                              Icon(Icons.app_registration,
                                  color: Color.fromARGB(255, 255, 255, 255))
                            ],
                          )),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
