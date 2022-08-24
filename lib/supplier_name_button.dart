import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart' as styles;
import 'package:food_down_menu/widgets/animated_button.dart';
import 'package:food_down_menu/widgets/on_hover.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'supplier_name_button.g.dart';

@swidget
Widget supplierNameButton() {
  return OnHover((isHovered) {
    return AnimatedButton(
      isHovered: isHovered,
      animationDuration: const Duration(milliseconds: 500),
      initialText: "supplier name",
      iconData: Icons.check,
      iconSize: styles.FontSizes.small,
      buttonStyle: AnimatedButtonStyle(
        primaryColor: styles.Colors.darkGrey,
        secondaryColor: styles.Colors.grey,
        iconColor: styles.Colors.blue,
        onHoverColor: styles.Colors.lightGrey,
        textStyle: const TextStyle(
          fontSize: styles.FontSizes.small,
          color: styles.Colors.textBlack,
        ),
        borderRadius: 30.0,
      ),
    );
  });
}
