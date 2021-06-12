import 'dart:math';

Map<String, String?> jsonToFormUrlEncoded(Map<String, dynamic> jsonMap) {
  Map<String, dynamic> json1 = jsonMap;
  Map<String, dynamic> json2 = {};

  while (!json1.values.every((element) => _isFlatType(element))) {
    for (String key in json1.keys) {
      if (json1[key] is Iterable) {
        for (int i = 0; i < json1[key].length; i++) {
          json2[key + "[$i]"] = json1[key][i];
        }
      } else if (json1[key] is Map) {
        for (String key2 in json1[key].keys) {
          json2[key + "[$key2]"] = json1[key][key2];
        }
      } else {
        json2[key] = json1[key];
      }
    }
    json1 = json2;
    json2 = {};
  }

  Map<String, String?> result = {};
  for (String key in json1.keys) {
    if (json1[key] is bool) {
      result[key] = json1[key] ? '1' : '0';
    } else if (json1[key] is int || json1[key] is double) {
      result[key] = json1[key].toString();
    } else if (json1[key] == null) {
      result[key] = "";
    } else {
      result[key] = json1[key];
    }
  }
  return result;
}

bool _isFlatType(dynamic item) {
  return !(item is Iterable || item is Map);
}

String randomString(
  int length, {
  bool upperCase = true,
  bool lowerCase = true,
  bool number = true,
  bool punctuation = false,
}) {
  String characters = [
    if (upperCase) 'QWERTYUIOPASDFGHJKLXCVBNM',
    if (lowerCase) 'qwertyuiopasdfghjklzxcvbnm',
    if (number) '1234567890',
    if (punctuation) '`~!@#\$%^&*()_+=-\\|]}[{\'":;.,/?><',
  ].join();
  String result = '';
  for (int i = 0; i < length; i++) {
    result += characters[Random().nextInt(characters.length)];
  }
  return result;
}
