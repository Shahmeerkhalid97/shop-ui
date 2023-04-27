import 'package:flutter/material.dart';

import '../../../constant.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            press: () {
              if (numOfItem > 1) {
                setState(() {
                  numOfItem--;
                });
              }
            },
            icon: Icons.remove),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItem.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall!,
          ),
        ),
        buildOutlineButton(
            press: () {
              setState(() {
                numOfItem++;
              });
            },
            icon: Icons.add),
      ],
    );
  }
}

Widget buildOutlineButton({required IconData icon, required Function press}) {
  return InkWell(
    splashColor: kTextColor,
    onTap: () {
      press();
    },
    child: Container(
      decoration: BoxDecoration(
          border: Border.all(color: kTextLightColor, width: 1),
          borderRadius: BorderRadius.circular(13)),
      width: 40,
      height: 32,
      child: Icon(icon),
    ),
  );
}
