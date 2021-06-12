import 'package:flutter/material.dart';

extension XColor on Color {
  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  String toHex({bool withPrefix = true}) {
    return '${withPrefix ? '#' : ''}${this.red.toRadixString(16).padLeft(2, '0')}${this.green.toRadixString(16).padLeft(2, '0')}${this.blue.toRadixString(16).padLeft(2, '0')}';
  }
}
