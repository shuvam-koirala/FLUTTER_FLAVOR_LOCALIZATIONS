import 'package:flutter/material.dart';

class ColorPaletteModel {
  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryColorLight;
  final Color secondaryColorLight;
  ColorPaletteModel(
      {required this.primaryColor,
      required this.primaryColorLight,
      required this.secondaryColor,
      required this.secondaryColorLight});
}
