import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../screens/details/components/card_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffff6464),
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
