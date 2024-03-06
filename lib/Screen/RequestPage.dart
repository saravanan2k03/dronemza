import 'package:drone/constant/const.dart';
import 'package:flutter/material.dart';

import '../widgets/container.dart';
import '../widgets/textfield.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  final search = TextEditingController();
  String selectedValue = '';

  @override
  void dispose() {
    search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 75, 75),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height(context, 0.04)),
            customcontainer(
              color: const Color.fromARGB(255, 0, 0, 0),
              height: height(context, 0.13),
              width: width(context, 0.9),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: width(context, 0.28),
                      child: customtextfield(
                          context, 'Search', search, Icons.search),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: width(context, 0.11),
                          child: ListTile(
                              title: const Text('Current',
                                  style: TextStyle(color: Colors.white)),
                              leading: (Radio(
                                activeColor: Colors.white,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.green),
                                value: '1',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ))),
                        ),
                        SizedBox(
                          width: width(context, 0.02),
                        ),
                        SizedBox(
                          width: width(context, 0.11),
                          child: ListTile(
                              title: const Text('History',
                                  style: TextStyle(color: Colors.white)),
                              leading: (Radio(
                                activeColor: Colors.white,
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => Colors.green),
                                value: '2',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ))),
                        ),
                        SizedBox(
                          width: width(context, 0.04),
                        ),
                        Container(
                          height: height(context, 0.07),
                          width: width(context, 0.07),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: const Color.fromARGB(255, 0, 0, 0),
                              border: Border.all(color: Colors.white60)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  size: 20,
                                  Icons.filter_alt_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "Filter",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height(context, 0.04)),
            customcontainer(
              color: const Color.fromARGB(255, 0, 0, 0),
              height: height(context, 0.76),
              width: width(context, 0.9),
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.5),
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: customcontainer(
                          color: const Color.fromARGB(255, 80, 80, 80)
                              .withOpacity(0.3),
                          height: height(context, 0.02),
                          width: width(context, 0.2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 10),
                                      const Text("Mission Name  :  ANGRY BIRD",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const SizedBox(height: 10),
                                      const Text(
                                          "Location           :  Lat 25 1047 , Lon 82.2956",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const SizedBox(height: 10),
                                      const Text(
                                          "Status               :  in Progress",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const SizedBox(height: 20),
                                      MaterialButton(
                                          color: Colors.green,
                                          onPressed: () {},
                                          child: const Text("View Details",
                                              style: TextStyle(
                                                  color: Colors.white))),
                                    ]),
                              ),
                              // Row(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     MaterialButton(
                              //         color: Colors.green,
                              //         onPressed: () {},
                              //         child: Text("View Details",
                              //             style:
                              //                 TextStyle(color: Colors.white))),
                              //   ],
                              // )
                            ],
                          )),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
