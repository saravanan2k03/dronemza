import 'package:drone/constant/const.dart';
import 'package:drone/controller/MenuwidgetController.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              index: 1,
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.speed_outlined,
                color: Colors.white,
              ),
              index: 0,
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.create_new_folder,
                color: Colors.white,
              ),
              index: 2,
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.bar_chart_outlined,
                color: Colors.white,
              ),
              index: 1,
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.map_outlined,
                color: Colors.white,
              ),
              index: 0,
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
              index: 0,
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              index: 0,
            ),
            CustomIconWidget(
              icon: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              index: 0,
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
              index: 0,
            ),
          ],
        ),
      ],
    );
  }
}

class CustomIconWidget extends StatefulWidget {
  final Icon icon;
  final int index;
  const CustomIconWidget({
    super.key,
    required this.icon,
    required this.index,
  });

  @override
  State<CustomIconWidget> createState() => _CustomIconWidgetState();
}

class _CustomIconWidgetState extends State<CustomIconWidget> {
  final MenuWidgetController controller = Get.put(MenuWidgetController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: IconButton(
        hoverColor: Colors.black,
        onPressed: () {
          controller.ChancePage(RxInt(widget.index));

          if (kDebugMode) {
            print(widget.index);
          }
        },
        icon: widget.icon,
      ),
    );
  }
}
