import 'package:flutter/material.dart';
import 'package:food_down_menu/menu_bar.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'main.g.dart';

void main() => runApp(const MyApp());

@swidget
Widget myApp() {
  return MaterialApp(
    title: 'Flutter Simple Animations',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Scaffold(
      body: Center(
        child: MenuBar(),
      ),
    ),
  );
}
