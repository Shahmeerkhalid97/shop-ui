import 'package:flutter/material.dart';
import '../constant.dart';
import '../model/Product.dart';

class CardItem extends StatelessWidget {
  CardItem({
    super.key,
    this.product,
    required this.press,
  });

  final Product? product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              // for demo we use fixed height and width
              // height: 180,
              // width: 160,

              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product!.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product!.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            '\$${product!.price}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
