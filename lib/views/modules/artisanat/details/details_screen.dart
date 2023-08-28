import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pango_afrika/utils/constant.dart';
import 'package:pango_afrika/views/modules/artisanat/components/favIcon.dart';
import 'package:pango_afrika/views/modules/artisanat/details/components/body.dart';

import '../../../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kMainColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        FavIcon(product: product),
        const SizedBox(width: kDefaultPaddin)
      ],
    );
  }
}
