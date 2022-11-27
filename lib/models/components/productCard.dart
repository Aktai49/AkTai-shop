
import 'package:flutter/material.dart';
import 'package:login/constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
    required this.image,
     required this.title, 
      required this.price, 
     required this.press,
  }) : super(key: key);

  final String image, title;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(DefaultPadding / 2),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(DefaultBorderRadius),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration:  BoxDecoration(
                  color: Color(0xFFEFEF2),
                  borderRadius:
                      const BorderRadius.all(Radius.circular(DefaultBorderRadius))),
              child: Image.asset(
                image,
                height: 155,
              ),
            ),
            const SizedBox(
              height: DefaultPadding / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                   title ,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: DefaultPadding / 6,
                ),
                Text(
                  '\$'+price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
