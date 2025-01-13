import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final controller = TextEditingController();

  setValue(String value) {
    String str = controller.text;

    switch (value) {
      case 'C':
        controller.clear();
        break;
      case 'AC':
        controller.text = str.substring(0, str.length - 1);
        break;
      case 'X':
        controller.text += '*';
        break;
      case '=':
        compute();
        break;
      default:
        controller.text += value;
    }

    controller.selection = TextSelection.fromPosition(
        TextPosition(offset: controller.text.length));
  }

  compute() {
    String text = controller.text;
    controller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
