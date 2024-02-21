import 'package:drone/Screen/Visualization.dart';
import 'package:drone/widgets/MenuWidget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            color: const Color.fromARGB(244, 20, 22, 27),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: MenuWidget(),
            ),
          )),
          Expanded(
            flex: 20,
            child: Container(
                color: const Color.fromARGB(234, 0, 0, 0),
                child: Visualization()),
          )
        ],
      ),
    );
  }
}
