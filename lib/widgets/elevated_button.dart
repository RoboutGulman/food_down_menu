import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'elevated_button.g.dart';

@swidget
Widget elevatedButton(
    {required Color backgroundColor,
    required String content,
    required TextStyle textStyle}) {
  return material.ElevatedButton(
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor)),
    onPressed: () {},
    child: Text(content, style: textStyle),
  );
}
