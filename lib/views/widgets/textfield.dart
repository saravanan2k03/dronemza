import 'package:flutter/material.dart';

Widget customtextfield(BuildContext context, String labeltext,
    TextEditingController ctr, IconData icon) {
  return TextFormField(
    style: TextStyle(color: Colors.white),
    cursorColor: Colors.white,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please enter required data";
      } else {
        return null;
      }
    },
    controller: ctr,
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.white),
      labelText: labeltext,
      labelStyle: const TextStyle(color: Colors.white60),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(05),
        borderSide: const BorderSide(width: 1, color: Colors.white60),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(05),
        borderSide: const BorderSide(
          width: 1,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget customtextfieldsurfixicon(BuildContext context, String labeltext,
    TextEditingController ctr, IconData icon) {
  return TextFormField(
    style: TextStyle(color: Colors.white),
    cursorColor: Colors.white,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please enter required data";
      } else {
        return null;
      }
    },
    controller: ctr,
    decoration: InputDecoration(
      suffixIcon: Icon(icon, color: Colors.white),
      labelText: labeltext,
      labelStyle: const TextStyle(color: Colors.white60),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(05),
        borderSide: const BorderSide(width: 1, color: Colors.white60),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(05),
        borderSide: const BorderSide(
          width: 1,
          color: Colors.white,
        ),
      ),
    ),
  );
}
