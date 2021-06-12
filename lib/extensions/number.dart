import 'package:flutter/material.dart';

extension XNum on num {
  Widget get width => SizedBox(
        width: this.toDouble(),
      );

  Widget get height => SizedBox(
        height: this.toDouble(),
      );

  Widget get x => width;

  Widget get y => height;

  BorderRadiusGeometry get borderRadius => BorderRadius.circular(
        this.toDouble(),
      );

  BorderRadiusGeometry get borderRadiusTop => BorderRadius.vertical(
        top: Radius.circular(
          this.toDouble(),
        ),
      );

  BorderRadiusGeometry get borderRadiusBottom => BorderRadius.vertical(
        bottom: Radius.circular(
          this.toDouble(),
        ),
      );

  BorderRadiusGeometry get borderRadiusLeft => BorderRadius.horizontal(
        left: Radius.circular(
          this.toDouble(),
        ),
      );

  BorderRadiusGeometry get borderRadiusRight => BorderRadius.horizontal(
        right: Radius.circular(
          this.toDouble(),
        ),
      );

  String asString({bool forceAsFixed = false, int fractionDigits = 2}) {
    if (!forceAsFixed && this == this.floor()) {
      return "${this.floor()}";
    } else {
      return "${this.toStringAsFixed(fractionDigits)}";
    }
  }

  EdgeInsets get padding => EdgeInsets.all(this.toDouble());

  EdgeInsets get paddingVertical => EdgeInsets.symmetric(vertical: this.toDouble());

  EdgeInsets get paddingHorizontal => EdgeInsets.symmetric(horizontal: this.toDouble());

  EdgeInsets get paddingTop => EdgeInsets.only(top: this.toDouble());

  EdgeInsets get paddingBottom => EdgeInsets.only(bottom: this.toDouble());

  EdgeInsets get paddingLeft => EdgeInsets.only(left: this.toDouble());

  EdgeInsets get paddingRight => EdgeInsets.only(right: this.toDouble());
}
