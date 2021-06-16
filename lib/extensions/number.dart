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

  BorderRadius get borderRadius => BorderRadius.circular(
        this.toDouble(),
      );

  BorderRadius get borderRadiusTop => BorderRadius.vertical(
        top: Radius.circular(
          this.toDouble(),
        ),
      );

  BorderRadius get borderRadiusBottom => BorderRadius.vertical(
        bottom: Radius.circular(
          this.toDouble(),
        ),
      );

  BorderRadius get borderRadiusLeft => BorderRadius.horizontal(
        left: Radius.circular(
          this.toDouble(),
        ),
      );

  BorderRadius get borderRadiusRight => BorderRadius.horizontal(
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

  EdgeInsets exceptLeft({double leftPadding = 0}) {
    return EdgeInsets.only(
      left: leftPadding,
      bottom: this as double,
      right: this as double,
      top: this as double,
    );
  }

  EdgeInsets exceptRight({double rightPadding = 0}) {
    return EdgeInsets.only(
      left: this as double,
      bottom: this as double,
      right: rightPadding,
      top: this as double,
    );
  }

  EdgeInsets exceptTop({double topPadding = 0}) {
    return EdgeInsets.only(
      left: this as double,
      bottom: this as double,
      right: this as double,
      top: topPadding,
    );
  }

  EdgeInsets exceptBottom({double bottomPadding = 0}) {
    return EdgeInsets.only(
      left: this as double,
      bottom: bottomPadding,
      right: this as double,
      top: this as double,
    );
  }
}
