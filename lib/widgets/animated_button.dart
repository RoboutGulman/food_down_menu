import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'animated_button.g.dart';

@hwidget
Widget animatedButton({
  required bool isHovered,
  required String initialText,
  required IconData iconData,
  required double iconSize,
  required Duration animationDuration,
  required AnimatedButtonStyle buttonStyle,
}) {
  final smallDuration =
      Duration(milliseconds: (animationDuration.inMilliseconds * 0.2).round());

  final isSelected = useState(false);

  var backgroundColor = buttonStyle.onHoverColor;
  if (!isHovered) {
    (isSelected.value)
        ? backgroundColor = buttonStyle.secondaryColor
        : backgroundColor = buttonStyle.primaryColor;
  }

  return Material(
    child: InkWell(
      onTap: () {
        isSelected.value = !isSelected.value;
      },
      child: AnimatedContainer(
        duration: smallDuration,
        height: iconSize + 16,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: buttonStyle.primaryColor),
          borderRadius:
              BorderRadius.all(Radius.circular(buttonStyle.borderRadius)),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: smallDuration,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              (isSelected.value)
                  ? Icon(
                      iconData,
                      size: iconSize,
                      color: buttonStyle.iconColor,
                    )
                  : const SizedBox.shrink(),
              SizedBox(
                width: isSelected.value ? 5 : 0.0,
              ),
              Text(initialText, style: buttonStyle.textStyle),
            ],
          ),
        ),
      ),
    ),
  );
}

class AnimatedButtonStyle {
  final TextStyle textStyle;
  final Color primaryColor, secondaryColor, iconColor, onHoverColor;
  final double borderRadius;

  AnimatedButtonStyle(
      {required this.primaryColor,
      required this.secondaryColor,
      required this.iconColor,
      required this.onHoverColor,
      required this.textStyle,
      required this.borderRadius});
}
