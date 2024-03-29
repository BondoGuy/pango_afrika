import 'package:flutter/material.dart';
import 'package:pango_afrika/views/modules/artisanat/details/details_screen.dart';

import '../../../../models/product.dart';
import '../../../../utils/constant.dart';
import 'categorries.dart';
import 'item_card.dart';
import 'item_card_v2.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 200.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Categories(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Populaire",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("Voir tout ",
                      style: TextStyle(fontSize: 14, color: kTextColor)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin, vertical: kDefaultPaddin / 2),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) => ItemCard(
                          product: products[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products[index],
                                ),
                              )),
                        )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommander",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text("Voir tout ",
                      style: TextStyle(fontSize: 14, color: kTextColor)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin, vertical: kDefaultPaddin / 2),
              child: SizedBox(
                height: 90,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products_v2.length,
                    itemBuilder: (context, index) => ItemCardV2(
                          product: products_v2[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  product: products_v2[index],
                                ),
                              )),
                        )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
