import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart';
import 'package:food_down_menu/widgets/animated_button.dart';

class SupplierNameButton extends StatelessWidget {
  const SupplierNameButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      animationDuration: const Duration(milliseconds: 500),
      initialText: "supplier name",
      iconData: Icons.check,
      iconSize: fontSize,
      buttonStyle: AnimatedButtonStyle(
        primaryColor: const Color.fromARGB(157, 186, 186, 186),
        secondaryColor: const Color.fromARGB(183, 179, 194, 219),
        iconColor: const Color.fromARGB(255, 5, 99, 175),
        elevation: 0,
        initialTextStyle: const TextStyle(
          fontSize: fontSize,
          color: Color.fromARGB(255, 73, 73, 73),
        ),
        finalTextStyle: const TextStyle(
          fontSize: fontSize,
          color: Color.fromARGB(255, 73, 73, 73),
        ),
        borderRadius: 30.0,
      ),
    );
  }
}
