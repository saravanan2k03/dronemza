import 'package:drone/constant/const.dart';
import 'package:flutter/material.dart';

class customCircleButton extends StatelessWidget {
  final String name;
  const customCircleButton({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context, 0.07),
      height: height(context, 0.07),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 47, 46, 46),
        shape: BoxShape.circle,
        border: Border.all(width: 2.0, color: Colors.black),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 05,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
