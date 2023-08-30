import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static String itemFormString(String label) {
    print(label);
    return lerString();
  }

  static double itemFormDouble(String label) {
    print(label);
    var valor = lerString();
    try {
      return double.parse(valor);
    } catch (e) {
      return 0.0;
    }
  }
}
