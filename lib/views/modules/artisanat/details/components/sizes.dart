import 'package:flutter/material.dart';
import 'package:pango_afrika/utils/constant.dart';

class Sizes extends StatefulWidget {
  @override
  _SizesState createState() => _SizesState();
}

class _SizesState extends State<Sizes> {
  List<String> sizes = [
    "S",
    "M",
    "L",
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Size",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black,
                ),
              )),
          const SizedBox(height: kDefaultPaddin / 5),
          SizedBox(
            height: 25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sizes.length,
              itemBuilder: (context, index) => buildCategory(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 10),
        child: Container(
          width: 25,
          decoration: BoxDecoration(
            color: selectedIndex == index ? kMainDarkColor : Colors.white,
            border: Border.all(
              color: kMainDarkColor.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sizes[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: selectedIndex == index ? kMainColor : kTextColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
