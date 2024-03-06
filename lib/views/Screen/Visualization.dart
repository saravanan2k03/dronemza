import 'package:drone/views/constant/const.dart';
import 'package:drone/views/widgets/AltitudeController.dart';
import 'package:drone/views/widgets/CameraLiveFeed.dart';
import 'package:drone/views/widgets/SpeedometerView.dart';
import 'package:flutter/material.dart';

class Visualization extends StatefulWidget {
  const Visualization({super.key});

  @override
  State<Visualization> createState() => _VisualizationState();
}

class _VisualizationState extends State<Visualization> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CameraLiveFeed(),
              SizedBox(
                width: width(context, 0.01),
              ),
              const AltitudeController()
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SpeedometerView(),
              SizedBox(
                width: width(context, 0.01),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: height(context, 0.38),
                  width: width(context, 0.25),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 47, 46, 46),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 255, 255, 255)
                            .withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height(context, 0.34),
                        width: width(context, 0.24),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.black),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            "images/mockmapview.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
