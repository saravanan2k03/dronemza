import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Speedo extends StatefulWidget {
  const Speedo({super.key});

  @override
  State<Speedo> createState() => _SpeedoState();
}

class _SpeedoState extends State<Speedo> {
  double _speed = 100;
  // void _updateSpeed(double newSpeed) {
  //   setState(() {
  //     _speed = newSpeed;
  //   });
  // }

  @override
  void initState() {
    setState(() {
      _speed = 50;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 05),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0.0, end: _speed),
            duration: const Duration(seconds: 2),
            builder: (BuildContext context, double value, Widget? child) {
              return SfRadialGauge(axes: <RadialAxis>[
                RadialAxis(
                    axisLabelStyle: const GaugeTextStyle(color: Colors.white),
                    axisLineStyle: const AxisLineStyle(color: Colors.white),
                    majorTickStyle: const MajorTickStyle(color: Colors.white),
                    minorTickStyle: const MinorTickStyle(color: Colors.white),
                    minimum: 0,
                    maximum: 150,
                    ranges: <GaugeRange>[
                      GaugeRange(
                          startValue: 0,
                          endValue: 50,
                          color: Colors.green,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 50,
                          endValue: 100,
                          color: Colors.orange,
                          startWidth: 10,
                          endWidth: 10),
                      GaugeRange(
                          startValue: 100,
                          endValue: 150,
                          color: Colors.red,
                          startWidth: 10,
                          endWidth: 10)
                    ],
                    pointers: <GaugePointer>[
                      NeedlePointer(
                          tailStyle: const TailStyle(color: Colors.white),
                          needleColor: Colors.white,
                          knobStyle: const KnobStyle(color: Colors.white),
                          value: value)
                    ],
                    annotations: <GaugeAnnotation>[
                      GaugeAnnotation(
                          widget: Text(value.toStringAsFixed(2),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                          angle: 90,
                          positionFactor: 0.5)
                    ])
              ]);
            }),
      ),
    );
  }
}
