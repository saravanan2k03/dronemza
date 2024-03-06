import 'package:drone/Screen/MainPage.dart';
import 'package:drone/Screen/Visualization.dart';
import 'package:drone/Screen/RequestPage.dart';
import 'package:flutter/material.dart';

import '../Screen/add_disaster.dart';

double height(context, double hgt) {
  return MediaQuery.of(context).size.height * hgt;
}

double width(context, double wdt) {
  return MediaQuery.of(context).size.width * wdt;
}

int index = 0;

List<dynamic> pages = [
  Visualization(),
  RequestPage(),
  add(),
];
