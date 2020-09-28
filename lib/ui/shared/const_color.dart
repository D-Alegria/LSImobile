import 'package:flutter/material.dart';

abstract class ColorStyles {
  static const dark = const Color(0xFF18172B);
  static const light = const Color(0xFF6E80B0);
  static const primary = const Color(0xFF6D61F2);
  static const extraLight = const Color(0xFFF8F8FA);
  static const white = const Color(0xFFFFFFFF);
  static const orange = const Color(0xFFF2994A);
  static const blue = const Color(0xFF2F80ED);
  static const black = const Color(0xFF000000);
  static const red = const Color(0xFFEB5757);
  static const blueGradient = const LinearGradient(
    colors: [
      Color(0xFF243C92),
      Color(0xFF0B4A78),
    ],
    stops: [0.09, 0.8],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
