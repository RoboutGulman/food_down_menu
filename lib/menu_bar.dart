import 'package:flutter/material.dart';
import 'package:food_down_menu/supplier_name_button.dart';
import 'package:food_down_menu/lucky_button.dart';
import 'package:food_down_menu/menu_title.dart';
import 'package:food_down_menu/order_button.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: const [
                LuckyButton(),
                SizedBox(
                  width: 10,
                ),
                SupplierNameButton()
              ],
            ),
          ),
          const MenuTitle(),
          const OrderButton(),
        ],
      ),
    );
  }
}
