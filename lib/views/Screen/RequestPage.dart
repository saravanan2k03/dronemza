import 'package:drone/controller/RequestPageController.dart';
import 'package:drone/views/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

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
  final RequestPageController controller = Get.put(RequestPageController());
  @override
  void initState() {
    controller.getData();
    super.initState();
  }

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
              child: GetX<RequestPageController>(builder: (controller) {
                return GridView.builder(
                    itemCount: controller.lst.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, childAspectRatio: 1.5),
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: customcontainer(
                            color: const Color.fromARGB(255, 80, 80, 80)
                                .withOpacity(0.3),
                            height: height(context, 0.02),
                            width: width(context, 0.2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      customTextData(context, "Mission name ",
                                          "${controller.lst[index]['missionName']}"),
                                      customTextData(context, "Location ",
                                          "${controller.lst[index]['location']}"),
                                      customTextData(context, "Status ",
                                          "${controller.lst[index]['Status']}"),
                                      customTextData(context, "Disaster type",
                                          "${controller.lst[index]['disasterType']}"),
                                      const SizedBox(height: 25),
                                      SizedBox(
                                        width: width(context, 0.23),
                                        child: MaterialButton(
                                            color: Colors.green,
                                            onPressed: () {
                                              controller.getData();
                                            },
                                            child: const Text("Accept",
                                                style: TextStyle(
                                                    color: Colors.white))),
                                      ),
                                    ]),
                              ],
                            )),
                      );
                    });
              }),
            ),
          ],
        ),
      ),
    );
  }

  customTextData(BuildContext context, String title, String data) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width(context, 0.10),
            height: height(context, 0.03),
            // color: Colors.brown,
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          const Text(
            ":",
            style: TextStyle(
                fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          SizedBox(
            width: width(context, 0.003),
          ),
          SizedBox(
            width: width(context, 0.10),
            height: height(context, 0.03),
            // color: const Color.fromARGB(255, 198, 59, 8),
            child: Text(
              data,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
