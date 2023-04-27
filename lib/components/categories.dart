import 'package:flutter/material.dart';

import 'package:shop_ui/constant.dart';

// we need stateful widget for our categories
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> _listCategories = [
    'Hand bag',
    'Jewellery',
    'Footwear',
    'Dresses',
    'Cosmetics'
  ];
  // by default our first item will be selected
  var _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _listCategories.length,
          itemBuilder: (ctx, index) {
            return buildCategory(index);
          },
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _listCategories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: kDefaultPadding / 4),
              height: 2,
              width: 30,
              color:
                  _selectedIndex == index ? Colors.black : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
