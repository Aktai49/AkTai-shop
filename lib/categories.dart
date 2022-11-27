import 'package:flutter/material.dart';
import 'package:login/models/category.dart';

import 'constant.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //     Container(height: 110,
    //       child: ListView.builder(
    //         scrollDirection: Axis.horizontal,
    //           itemCount: demoCategories.length,
    //           itemBuilder: (context, index) => CategoryCard(
    //                 icon: demoCategories[index].icon,
    //                 title: demoCategories[index].title,
    //                 press: () {},
    //               )),
    //     ),
    //   ],
    // );
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              demoCategories.length,
              (index) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: CategoryCard(
                      icon: demoCategories[index].icon,
                      title: demoCategories[index].title,
                      press: () {},
                    ),
                  ))),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(DefaultBorderRadius),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: DefaultPadding / 4, vertical: DefaultPadding / 2),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 50,
            ),
            const SizedBox(height: DefaultPadding / 2),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
      ),
    );
  }
}
