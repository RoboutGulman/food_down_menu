import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: barHeight,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromARGB(255, 208, 31, 31))),
            onPressed: () {},
            child: const Text(
              'Заказать',
              style: TextStyle(color: Colors.white, fontSize: fontSize),
            ),
          ),
        ),
      ),
    );
  }
}
