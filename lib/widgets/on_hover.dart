import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'on_hover.g.dart';

@hwidget
Widget onHover(Widget Function(bool isHovered) builder)
{
  final isHovered = useState(false);
  
  void onEntered(bool isWidgetHovered) {
      isHovered.value = isWidgetHovered;
  }

  return MouseRegion(
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: builder(isHovered.value),
    );
}