import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart' as styles;
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'menu_title.g.dart';

@swidget
Widget menuTitle() {
  return const Expanded(
    child: Align(
      alignment: Alignment.center,
      child: Text(
        "Меню",
        style: TextStyle(
          color: Colors.blue,
          fontSize: styles.FontSizes.header,
        ),
      ),
    ),
  );
}

