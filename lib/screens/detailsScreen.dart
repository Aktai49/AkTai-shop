import 'package:flutter/material.dart';
import 'package:login/constant.dart';
import 'package:login/models/Product.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Color.fromARGB(255, 47, 33, 243),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  'icons/fav.png',
                  height: 20,
                )),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            fit: BoxFit.cover,
            height: 370,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(DefaultPadding, DefaultPadding * 1.5,
                  DefaultPadding, DefaultPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(DefaultBorderRadius * 3),
                    topRight: Radius.circular(DefaultBorderRadius * 3),
                  )),
              child: Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    const SizedBox(
                      width: DefaultPadding,
                    ),
                    Text(
                      '\$ ${product.price}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: DefaultPadding),
                  child: Text(
                      '''Рубашка с длинным рукавом и воротником рубашки.Состав
Акрил 31%, Хлопок 31%, Полиэстер 30%, Вискоза 6%, Шерсть 2%'''),
                ),
                Text(
                  'Color',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ColorDot(
                  color: Color.fromARGB(255, 245, 245, 248),
                  isActive: false,
                  press: () {},
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(DefaultPadding / 4),
        decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 42, 44, 194) //primaryColor
                  ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          radius: 12,
          backgroundColor: color,
        ),
      ),
    );
  }
}
