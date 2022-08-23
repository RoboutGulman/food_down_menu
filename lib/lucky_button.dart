import 'package:flutter/material.dart';
import 'package:food_down_menu/style.dart';

class LuckyButton extends StatelessWidget {
  const LuckyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: barHeight,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 31, 173, 208))),
        onPressed: () {},
        child: const Text(
          'Мне повезёт!',
          style: TextStyle(color: Colors.white, fontSize: fontSize),
        ),
      ),
    );
  }
}
