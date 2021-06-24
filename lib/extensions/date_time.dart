import 'package:intl/intl.dart';

extension XDateTime on DateTime {
  String formatDateTime([String? locale]) {
    return DateFormat.yMMMMEEEEd(locale).format(this) + ' ' + DateFormat.jm(locale).format(this);
  }

  String formatDate([String? locale]) {
    return DateFormat.yMMMMEEEEd(locale).format(this);
  }
}
