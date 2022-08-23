import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart';

class MenuTitle extends StatelessWidget {
  const MenuTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "Меню",
          style: TextStyle(color: Colors.blue, fontSize: fontSize + 10),
        ),
      ),
    );
  }
}
