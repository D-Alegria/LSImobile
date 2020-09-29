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
  static const yellow = const Color(0xFFFFE594);
  static const yellow1 = const Color(0xFFF2C94C);
  static const lightBlue = const Color(0xFF2F80ED);
  static const lightYellow = const Color(0xFFFFEAA8);
  static const green = const Color(0xFF25CE36);
  static const green1 = const Color(0xFF27AE60);
  static const green2 = const Color(0xFF57EB92);
  static const green3 = const Color(0xFF6FCF97);
  static const blue3 = const Color(0xFF56CCF2);
  static const grey = const Color(0xFF8F92A1);
  static const grey2 = const Color(0xFF4F4F4F);
  static const primaryGradient = const LinearGradient(
    colors: [
      Color(0xFF243C92),
      Color(0xFF0B4A78),
    ],
    stops: [0.09, 0.8],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const blueGradient = const LinearGradient(
    colors: [
      Color(0xFF193D67),
      Color(0xFF092652),
    ],
    stops: [0.09, 0.8],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static const greenGradient = const LinearGradient(
    colors: [
      Color(0xFF339D4A),
      Color(0xFF004D11),
    ],
    stops: [0.09, 0.8],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const yellowGradient = const LinearGradient(
    colors: [
      Color(0xFF28CBD6),
      Color(0xFF0CA4B9),
    ],
    stops: [0.09, 0.8],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const lightGradient = const LinearGradient(
    colors: [
      Color(0xFFEEFBFF),
      Color(0xFFFFF8FA),
    ],
    stops: [0.09, 0.8],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
