import 'package:flutter/material.dart';

extension XEdgeInsets on EdgeInsets {
  static EdgeInsets exceptLeft(double size, {double leftPadding = 0}) {
    return EdgeInsets.only(
      left: leftPadding,
      bottom: size,
      right: size,
      top: size,
    );
  }

  static EdgeInsets exceptRight(double size, {double rightPadding = 0}) {
    return EdgeInsets.only(
      left: size,
      bottom: size,
      right: rightPadding,
      top: size,
    );
  }

  static EdgeInsets exceptTop(double size, {double topPadding = 0}) {
    return EdgeInsets.only(
      left: size,
      bottom: size,
      right: size,
      top: topPadding,
    );
  }

  static EdgeInsets exceptBottom(double size, {double bottomPadding = 0}) {
    return EdgeInsets.only(
      left: size,
      bottom: bottomPadding,
      right: size,
      top: size,
    );
  }
}
