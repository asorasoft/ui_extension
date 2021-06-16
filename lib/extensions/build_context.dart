import 'package:flutter/material.dart';

extension XBuildContext on BuildContext {
  Future<T?> push<T extends Object?>(Widget nextPage, {bool replace = false}) {
    var pageRoute = MaterialPageRoute<T>(
      builder: (context) => nextPage,
    );
    if (replace) {
      return Navigator.of(this).pushReplacement(
        pageRoute,
      );
    } else {
      return Navigator.of(this).push(
        pageRoute,
      );
    }
  }

  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop(result);
  }

  closeKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  TextStyle? get headline1 => Theme.of(this).textTheme.headline1;

  TextStyle? get headline2 => Theme.of(this).textTheme.headline2;

  TextStyle? get headline3 => Theme.of(this).textTheme.headline3;

  TextStyle? get headline4 => Theme.of(this).textTheme.headline4;

  TextStyle? get headline5 => Theme.of(this).textTheme.headline5;

  TextStyle? get headline6 => Theme.of(this).textTheme.headline6;

  TextStyle? get bodyText1 => Theme.of(this).textTheme.bodyText1;

  TextStyle? get bodyText2 => Theme.of(this).textTheme.bodyText2;

  TextStyle? get captionStyle => Theme.of(this).textTheme.caption;

  TextStyle? get buttonStyle => Theme.of(this).textTheme.button;

  TextStyle? get subtitle1 => Theme.of(this).textTheme.subtitle1;

  TextStyle? get subtitle2 => Theme.of(this).textTheme.subtitle2;
}
