import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart' as styles;
import 'package:food_down_menu/widgets/elevated_button.dart' as widgets;
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'lucky_button.g.dart';

@swidget
Widget luckyButton() {
  return const widgets.ElevatedButton(
    backgroundColor: styles.Colors.turquoise,
    content: 'Мне повезёт!',
    textStyle: TextStyle(
      color: Colors.white,
      fontSize: styles.FontSizes.small,
    ),
  );
}
