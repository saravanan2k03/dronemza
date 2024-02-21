import 'package:drone/constant/const.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: height(context, 0.04),
        ),
        Container(
          height: height(context, 0.04),
          width: width(context, 0.09),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(05)),
          child: const Center(
            child: Text(
              "MZA",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
        const Column(
          children: [
            CustomIconWidget(
              icon: Icon(
                Icons.dashboard_outlined,
                color: Colors.white,
              ),
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.speed_outlined,
                color: Colors.white,
              ),
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.folder_open_outlined,
                color: Colors.white,
              ),
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.map_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        // SizedBox(
        //   height: height(context, 0.04),
        // ),
        Padding(
          padding: const EdgeInsets.all(09),
          child: Container(
            color: Colors.grey,
            height: height(context, 0.002),
            width: width(context, 0.03),
          ),
        ),
        // SizedBox(
        //   height: height(context, 0.04),
        // ),
        const Column(
          children: [
            CustomIconWidget(
              icon: Icon(
                Icons.settings_suggest_sharp,
                color: Colors.white,
              ),
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.flag_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),

        Column(
          children: [
            CircleAvatar(
              radius: height(context, 0.020),
            ),
            SizedBox(
              height: height(context, 0.02),
            ),
            Padding(
              padding: const EdgeInsets.all(09),
              child: Container(
                color: Colors.grey,
                height: height(context, 0.002),
                width: width(context, 0.03),
              ),
            ),
            const CustomIconWidget(
              icon: Icon(
                Icons.power_settings_new_sharp,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomIconWidget extends StatelessWidget {
  final Icon icon;
  const CustomIconWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: IconButton(
        hoverColor: Colors.black,
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}
