import 'package:flutter/material.dart';

class Product {
  final String image, title, description, isfav, code, brand, leather,rating;
  final int price, size, id ;
  final Color color;
  Product({
    required this.id,
    required this.isfav,
    required this.image,
    required this.title,
    required this.code,
    required this.brand,
    required this.leather,
    this.rating ="4.2",
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Pink Bag",
      code: "Y2d435",
      brand: "Ma boutiaue 4",
      leather: "100%",
      rating: "4.5",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/articles/a.jpeg",
      color: const Color(0xFF3D82AE), isfav: ''),
  Product(
      id: 2,
      title: "Leather Bag",
      code: "Y2d435",
      brand: "Ma boutiaue 3",
      leather: "80%",
      price: 234,
      size: 8,
      isfav: "true",
      description: dummyText,
      image: "assets/images/articles/a.jpeg",
      color: const Color(0xFFD3A984)),
];
List<Product> products_v2 = [
  Product(
      id: 3,
      title: "Hobo Bag",
      code: "Y2d435",
      brand: "Ma boutiaue 1",
      leather: "50%",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/articles/e2.jpg",
      color: const Color(0xFF989493), isfav: ''),
  Product(
      id: 4,
      title: "Queen Mini Bag",
      code: "Y2d435",
      brand: "Ma boutiaue 2",
      leather: "100%",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/articles/a.jpeg",
      color: const Color(0xFFE6B398), isfav: ''),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";