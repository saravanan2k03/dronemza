import 'package:drone/views/constant/const.dart';
import 'package:drone/views/widgets/CustomJoyStick.dart';
import 'package:drone/views/widgets/Speedometerwidget.dart';
import 'package:flutter/material.dart';

class SpeedometerView extends StatelessWidget {
  const SpeedometerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context, 0.38),
      width: width(context, 0.65),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Speedo(),
          SizedBox(
            height: height(context, 0.35),
            width: width(context, 0.08),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height(context, 0.03),
                ),
                const Text(
                  "SPEED",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "20 Km/hr",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height(context, 0.03),
                ),
                const Text(
                  "Heigth",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "80m",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height(context, 0.03),
                ),
                const Text(
                  "Flight Time",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "00:30",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height(context, 0.03),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: height(context, 0.25),
            width: width(context, 0.001),
          ),
          SizedBox(
            height: height(context, 0.35),
            width: width(context, 0.12),
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(left: 05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height(context, 0.03),
                  ),
                  const Text(
                    "Latitude",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "20 Km/hr",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height(context, 0.03),
                  ),
                  const Text(
                    "Longitude",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "80m",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height(context, 0.03),
                  ),
                  const Text(
                    "Location",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: width(context, 0.1),
                    height: height(context, 0.03),
                    child: const Text(
                      "Ponnamaravathy",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height(context, 0.03),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            height: height(context, 0.25),
            width: width(context, 0.001),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomJoystick(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
