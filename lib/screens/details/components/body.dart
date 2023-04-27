import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui/constant.dart';

import '../../../model/Product.dart';
import '../../../screens/details/components/product_title_with_image.dart';
import '../../../screens/details/components/color_and_size.dart';
import '../../../screens/details/components/description.dart';
import '../../../screens/details/components/card_counter.dart';
import '../../../screens/details/components/counter_with_fav_btn.dart';
import '../../../screens/details/components/add_to_cart.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    // it provide us total height and width of screen
    Size size = MediaQuery.of(context).size;
    double statusBar = MediaQuery.of(context).padding.top;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height - statusBar,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 350,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      CounterWithFavBtn(),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTItleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
