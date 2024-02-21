import 'package:drone/constant/const.dart';
import 'package:flutter/material.dart';

class MapViewData extends StatelessWidget {
  const MapViewData({
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
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: width(context, 0.20),
              height: height(context, 0.30),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              // child: ClipRRect(
              //   borderRadius: BorderRadius.circular(15),
              //   child: Image.asset(
              //     "images/dronemock.png",
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
          ),
          SizedBox(
            width: width(context, 0.02),
          ),
          Container(
            height: height(context, 0.30),
            width: width(context, 0.09),
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
                  "Time",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "05:30 AM",
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
          )
        ],
      ),
    );
  }
}
