// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pango_afrika/utils/colors.dart';

class CustomButtom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String buttomText;
  final bool transparent;
  final EdgeInsets? margin;
  final double? height;
  final double? width;
  final double? fontSize;
  final double radius;
  final IconData? icon;
  const CustomButtom({
    Key? key,
    this.onPressed,
    required this.buttomText,
    required this.transparent,
    this.margin,
    this.height,
    this.width = 250,
    required this.fontSize,
    this.radius = 5,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle _flatButton = TextButton.styleFrom(
      backgroundColor: onPressed == null
          ? AppColors.greenColor
          : transparent
              ? Colors.transparent
              : AppColors.greenColor,
      maximumSize: Size(
          MediaQuery.of(context).size.width, height != null ? height! : 40),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
    );

    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.greenColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400]!,
                spreadRadius: 1,
                blurRadius: 10,
                offset: const Offset(1, 5), // changes position of shadow
              ),
            ]),
        width: MediaQuery.of(context).size.width,
        height: height ?? 50,
        child: TextButton(
          onPressed: onPressed,
          style: _flatButton,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(buttomText,
                  style: GoogleFonts.oswald(
                    fontSize: 16,
                    color: Colors.white,
                  )),
              // icon != null
              //     ? Padding(
              //         padding: const EdgeInsets.only(right: 10 / 2),
              //         child: Icon(icon,
              //             color: transparent
              //                 ? Theme.of(context).primaryColor
              //                 : Theme.of(context).canvasColor),
              //       )
              //     : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
