class Product {
  final String image, title;
  final int price;

  Product({
    required this.image,
   required this.title, 
   required this.price});
}

List<Product> demoProduct = [

  Product(image:
   'icons/zara.jpg', 
   title: 'Рубашка Zara',
    price: 140),

Product(image:
   'icons/zara.jpg', 
   title: ' Djinsy H&m',
    price: 450),

    Product(image:
   'icons/zara.jpg', 
   title: 'Платье Котон',
    price: 40),
    Product(image:
   'icons/zara.jpg', 
   title: 'Тренч Max&Mara',
    price: 180),
    Product(image:
   'icons/zara.jpg', 
   title: 'Блузка Stradivarius',
    price: 70),
    Product(image:
   'icons/zara.jpg', 
   title: 'Рубашка Zara',
    price: 440, 
    ),
];
