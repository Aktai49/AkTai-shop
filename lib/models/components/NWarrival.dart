import 'package:flutter/material.dart';
import 'package:login/constant.dart';
import 'package:login/models/Product.dart';
import 'package:login/models/components/productCard.dart';
import 'package:login/models/components/sectionTitle.dart';
import 'package:login/screens/detailsScreen.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'Акыркы келгендер',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              demoProduct.length,
              (index) => Padding(
                padding: const EdgeInsets.only(left: DefaultPadding),
                child: ProductCard(
                  image: demoProduct[index].image,
                  title: demoProduct[index].title,
                  price: demoProduct[index].price,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            product: demoProduct[index] ,),
                        ));
                  },
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
