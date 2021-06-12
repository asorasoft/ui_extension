import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ui_extension/flutter_ui_extension.dart';

void main() {
  test(
    'Convert JSON to form URL encoded',
    () {
      Map<String, dynamic> requestBody = {
        'data': [1, 3, 4],
      };
      final urlEncodedBody = jsonToFormUrlEncoded(requestBody);
      expect(urlEncodedBody['data[0]'], 1);
      expect(urlEncodedBody['data[1]'], 3);
      expect(urlEncodedBody['data[2]'], 4);
    },
  );
}
