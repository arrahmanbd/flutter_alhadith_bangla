import 'package:flutter/material.dart';

extension HexColor on String {
  Color toColor() {
    if (length != 7 || !startsWith('#')) {
      throw const FormatException("Invalid hex color code");
    }
    return Color(int.parse(substring(1, 7), radix: 16) + 0xFF000000);
  }
}
