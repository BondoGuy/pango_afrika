import 'package:flutter/material.dart';
import 'package:pango_afrika/models/product.dart';
import 'package:pango_afrika/utils/constant.dart';

class Description extends StatelessWidget {
  const Description({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "About",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.black,
              ),
            )),
        const SizedBox(height: kDefaultPaddin / 5),
        Text(
          product.description,
          style: const TextStyle(height: 1.5),
        ),
      ],
    );
  }
}
