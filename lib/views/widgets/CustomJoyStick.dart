import 'package:drone/views/constant/const.dart';
import 'package:flutter/material.dart';

class CustomJoystick extends StatefulWidget {
  const CustomJoystick({super.key});

  @override
  State<CustomJoystick> createState() => _CustomJoystickState();
}

class _CustomJoystickState extends State<CustomJoystick> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width(context, 0.20),
          height: height(context, 0.20),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 8,
                  color: Color.fromRGBO(33, 33, 33, 0.298))
            ],
            color: Color.fromARGB(255, 60, 60, 62),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color.fromARGB(255, 66, 66, 68),
                Color.fromARGB(255, 48, 48, 50),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
        ),
        Container(
          width: width(context, 0.18),
          height: height(context, 0.18),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 60, 60, 62),
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color.fromARGB(255, 56, 56, 56),
                Color.fromARGB(255, 61, 61, 61),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
          ),
        ),
        CircleAvatar(
          radius: 78,
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_up_rounded,
                    size: 30,
                    color: Colors.white,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 30,
                        color: Colors.white,
                      )),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 30,
                        color: Colors.white,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 30,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
