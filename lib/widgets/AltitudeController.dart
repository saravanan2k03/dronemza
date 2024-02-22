import 'package:drone/constant/const.dart';
import 'package:drone/widgets/CustomCircleButton.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AltitudeController extends StatefulWidget {
  const AltitudeController({
    super.key,
  });

  @override
  State<AltitudeController> createState() => _AltitudeControllerState();
}

class _AltitudeControllerState extends State<AltitudeController> {
  var val = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: height(context, 0.50),
        width: width(context, 0.25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 47, 46, 46),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // color: Colors.blue,
                  height: height(context, 0.15),
                  width: width(context, 0.14),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Angry Bird Pro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 03),
                          child: Text(
                            "High-Framerated Live Feed",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    // color: Colors.red,
                    height: height(context, 0.15),
                    width: width(context, 0.10),
                    child: Lottie.asset(animate: true, 'images/drone.json')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    color: Colors.grey,
                    height: height(context, 0.002),
                    width: width(context, 0.23),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height(context, 0.02),
            ),
            Row(
              children: [
                SizedBox(
                  height: height(context, 0.03),
                  width: width(context, 0.15),
                  // color: Colors.red,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Battery Status",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height(context, 0.03),
                  width: width(context, 0.10),
                  // color: Colors.yellow,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "75%",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: height(context, 0.03),
                  width: width(context, 0.15),
                  // color: Colors.red,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "12 mintues ago",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height(context, 0.03),
            ),
            Row(
              children: [
                SizedBox(
                  height: height(context, 0.03),
                  width: width(context, 0.15),
                  // color: Colors.red,
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Altitude Limited ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height(context, 0.03),
                  width: width(context, 0.10),
                  // color: Colors.yellow,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          val.round().toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 05),
              child: Row(
                children: [
                  SizedBox(
                    width: width(context, 0.23),
                    // color: Colors.blueAccent,
                    child: Slider(
                        min: 0.0,
                        max: 270,
                        value: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(context, 0.02),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: const customCircleButton(name: "F"),
                ),
                customCircleButton(
                  name: "H",
                ),
                customCircleButton(
                  name: "P",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
