import 'package:flutter/material.dart';
import 'package:shop_ui/constant.dart';

import '../../../model/Product.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Color'),
              Row(
                children: const [
                  ColorDot(
                    color: Color(0xff356c95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xfff8c078)),
                  ColorDot(color: Color(0xffa29b98)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
            style: const TextStyle(
              color: kTextColor,
            ),
            children: [
              const TextSpan(
                text: 'Size\n',
              ),
              TextSpan(
                text: '${product.size} cm',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
