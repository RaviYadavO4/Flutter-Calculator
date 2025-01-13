import 'package:calculator/constant/app_colors.dart';
import 'package:calculator/provider/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFeildWidget extends StatelessWidget {
  const TextFeildWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CalculatorProvider>(builder: (context, calCtrl, _) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
        child: TextField(
          controller: calCtrl.controller,
          decoration: InputDecoration(
              fillColor: AppColors.primaryColor,
              filled: true,
              border: InputBorder.none),
          style: TextStyle(fontSize: 50.0),
          readOnly: true,
          autofocus: true,
          showCursor: true,
        ),
      );
    });
  }
}
