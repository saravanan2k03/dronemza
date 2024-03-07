import 'package:drone/views/constant/const.dart';
import 'package:flutter/material.dart';

class customCircleButton extends StatelessWidget {
  final String name;
  const customCircleButton({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: width(context, 0.07),
          height: height(context, 0.07),
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
        CircleAvatar(
          radius: 22,
          backgroundColor: const Color.fromARGB(255, 60, 60, 62),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        )
      ],
    );
  }
}
