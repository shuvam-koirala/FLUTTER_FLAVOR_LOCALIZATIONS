import 'package:flavor_localizations/core/models/color_palette_model.dart';
import 'package:flutter/material.dart';

class ColorConstants {
  static final ColorPaletteModel defaultColor = ColorPaletteModel(
      primaryColor: const Color(0xFFFC4100),
      primaryColorLight: const Color(0xFFFFC55A),
      secondaryColor: const Color(0xFF00215E),
      secondaryColorLight: const Color(0xFF2C4E80));
  static final ColorPaletteModel devColor = ColorPaletteModel(
      primaryColor: const Color(0xFF522258),
      primaryColorLight: const Color(0xFF8C3061),
      secondaryColor: const Color(0xFFC63C51),
      secondaryColorLight: const Color(0xFFD95F59));
  static final ColorPaletteModel prodColor = ColorPaletteModel(
      primaryColor: const Color(0xFFFFB200),
      primaryColorLight: const Color(0xFFEB5B00),
      secondaryColor: const Color(0xFFE4003A),
      secondaryColorLight: const Color(0xFFB60071));
}
