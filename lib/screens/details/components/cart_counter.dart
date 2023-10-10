import 'package:flutter/material.dart';

import '';
import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(Icons.remove, () {
          setState(() {
            if (numOfItems > 1)
            {
              numOfItems--;
            }
          });
        }),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        buildOutlineButton(Icons.add, () {
          setState(() {
            numOfItems++;

          });
        }),
      ],
    );
  }

  SizedBox buildOutlineButton(IconData icon, VoidCallback press) {
    return SizedBox(
      width: 40,
      height: 32,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero, // Set this
          padding: EdgeInsets.zero, // and this
        ),
        child: Icon(icon),
      ),
    );
  }
}
