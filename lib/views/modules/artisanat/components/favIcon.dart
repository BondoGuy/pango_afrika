// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pango_afrika/models/product.dart';
import 'package:pango_afrika/utils/constant.dart';

class FavIcon extends StatelessWidget {
  const FavIcon({
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: product.isfav == "true" ? kMainDarkColor : kTextColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: product.isfav == "true" ? kMainDarkColor : kTextColor,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SvgPicture.asset(
          "assets/icons/heart.svg",
        ),
      ),
    );
  }
}
