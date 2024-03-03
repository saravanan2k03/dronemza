import 'package:flutter/material.dart';


class customcontainer extends StatelessWidget {
  const customcontainer({this.width, this.height, this.child, this.color});
  final width;
  final height;
  final child;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: child,
    );
  }
}
