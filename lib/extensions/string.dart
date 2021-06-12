import 'package:flutter/material.dart';

extension XString on String {
  Text get text => Text(this);

  bool get isNumeric {
    try {
      double.parse(this);
      return true;
    } catch (_) {
      return false;
    }
  }

  Color? get hexToColor {
    final buffer = StringBuffer();
    if (this.length == 6 || this.length == 7) buffer.write('ff');
    buffer.write(this.replaceFirst('#', ''));
    try {
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (_) {
      return null;
    }
  }

  bool get isEmail {
    final match =
        RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$").allMatches(this);
    if (match.isEmpty) {
      return false;
    }
    return true;
  }

  bool get isPhoneNumber {
    final match = RegExp(r"^0?[1-9][0-9]{7,8}$").allMatches(this);
    if (match.isEmpty) {
      return false;
    }
    return true;
  }
}
