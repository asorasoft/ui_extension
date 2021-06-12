import 'package:flutter/material.dart';
import '../utils/_utils.dart';

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
}
