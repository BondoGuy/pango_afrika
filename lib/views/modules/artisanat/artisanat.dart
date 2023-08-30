import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pango_afrika/views/modules/artisanat/components/body.dart';
import 'package:pango_afrika/views/modules/artisanat/components/upper_body.dart';

import '../../../utils/colors.dart';
import '../../../utils/constant.dart';

class Artisanat extends StatefulWidget {
  const Artisanat({super.key});

  @override
  State<Artisanat> createState() => _ArtisanatState();
}

class _ArtisanatState extends State<Artisanat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Body(),
          UpperBody(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: Colors.white,
      elevation: 5,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
