import 'package:flutter/material.dart';
import 'package:food_down_menu/supplier_name_button.dart';
import 'package:food_down_menu/lucky_button.dart';
import 'package:food_down_menu/menu_title.dart';
import 'package:food_down_menu/order_button.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:gap/gap.dart';

part 'menu_bar.g.dart';

@swidget
Widget menuBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: SizedBox(
      height: 36.0,
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: const [LuckyButton(), Gap(10), SupplierNameButton()],
            ),
          ),
          const MenuTitle(),
          const OrderButton(),
        ],
      ),
    ),
  );
}
