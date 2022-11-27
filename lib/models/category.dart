//ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:login/categories.dart';

class Category {
  final String icon;
  final String title;

  Category({
    required this.icon,
    required this.title,
  });
}

List<Category> demoCategories = [
  Category(
    icon: 'icons/pngdress.png',
    title: 'Платье',
  ),
  Category(
    icon: 'icons/sh.png',
    title: 'Обувь',
  ),
  Category(
    icon: 'icons/bryukiv.jpg',
    title: 'Брюки',
  ),
  Category(
    icon: 'icons/zara.jpg',
    title: 'Брюки',
  ),
  Category(
    icon: 'icons/shoo.png',
    title: 'Брюки',
  ),
  Category(
    icon: 'icons/shoenike.png',
    title: 'Брюки',
  ),
  Category(
    icon: 'icons/tsh.png',
    title: 'Брюки',
  ),
];
