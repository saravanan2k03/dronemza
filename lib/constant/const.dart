import 'package:drone/Screen/MainPage.dart';
import 'package:drone/Screen/Visualization.dart';
import 'package:drone/red/add_disaster.dart';
import 'package:drone/red/home.dart';
import 'package:flutter/material.dart';

double height(context, double hgt) {
  return MediaQuery.of(context).size.height * hgt;
}

double width(context, double wdt) {
  return MediaQuery.of(context).size.width * wdt;
}

int index = 0;

List<dynamic> pages = [
  Visualization(),
  Dash(),
  add(),
];
