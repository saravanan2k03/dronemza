import 'package:drone/constant/const.dart';
import 'package:flutter/material.dart';

class CameraLiveFeed extends StatelessWidget {
  const CameraLiveFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height(context, 0.50),
          width: width(context, 0.65),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 47, 46, 46),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              "images/DroneMockpic.jpeg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
            child: Container(
          height: height(context, 0.50),
          width: width(context, 0.09),
          decoration: const BoxDecoration(
            color: Color.fromARGB(137, 0, 0, 0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
            ),
          ),
        )),
      ],
    );
  }
}
