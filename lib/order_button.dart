import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart' as styles;
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:food_down_menu/widgets/elevated_button.dart' as widgets;

part 'order_button.g.dart';

@swidget
Widget orderButton() {
  return const widgets.ElevatedButton(
    backgroundColor: styles.Colors.red,
    content: 'Заказать',
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: styles.FontSizes.small,
    ),
  );
}
