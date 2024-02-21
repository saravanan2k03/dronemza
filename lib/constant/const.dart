import 'package:flutter/material.dart';

double height(context, double hgt) {
  return MediaQuery.of(context).size.height * hgt;
}

double width(context, double wdt) {
  return MediaQuery.of(context).size.width * wdt;
}
