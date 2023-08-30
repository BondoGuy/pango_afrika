// ignore_for_file: unnecessary_new

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pango_afrika/components/custom_buttom.dart';
import 'package:pango_afrika/utils/colors.dart';
import 'package:pango_afrika/views/auth/login/login.dart';
import 'package:pango_afrika/views/auth/register/sign_up.dart';
import 'package:pango_afrika/views/home/home.dart';
import 'package:vimeo_video_player/vimeo_video_player.dart';

import '../home/widgets/bottom_acceuil.dart';

class AuthScreen extends StatelessWidget {
  final String _vimeoVideoUrl = 'https://vimeo.com/70591644';

  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Color.fromARGB(255, 0, 0, 0),
      AppColors.greenColor,
      AppColors.redColor
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(1, 5), // changes position of shadow
                    ),
                  ]),
              height: 250,
              child: VimeoVideoPlayer(
                url: _vimeoVideoUrl,
                autoPlay: false,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 170,
              width: 400,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/globe.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(1, 5), // changes position of shadow
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 320,
              width: 400,
              //height: MediaQuery.of(context).size.height / 2,
              //width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[400]!,
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: const Offset(1, 5), // changes position of shadow
                    ),
                  ]
                  //color: Colors.white,
                  ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, bottom: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width / 1,
                        decoration: BoxDecoration(
                            // image: DecorationImage(
                            //   image: const AssetImage(
                            //     'assets/images/v1045-06a.jpg',
                            //   ),
                            //   fit: BoxFit.cover,
                            //   colorFilter: new ColorFilter.mode(
                            //       Colors.black.withOpacity(0.2),
                            //       BlendMode.dstATop),
                            // ),
                            borderRadius: BorderRadius.circular(5),
                            color: Theme.of(context).cardColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[500]!,
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(
                                    1, 5), // changes position of shadow
                              ),
                            ]
                            //color: Colors.yellow,
                            ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const SizedBox(width: 20.0, height: 100.0),
                            Text(
                              'PANGO AFRIKA',
                              style: GoogleFonts.oswald(
                                  fontSize: 25.0,
                                  color: AppColors.greenColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 20.0, height: 100.0),
                            DefaultTextStyle(
                              style: GoogleFonts.oswald(
                                  fontSize: 35.0, color: Colors.black),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  ScaleAnimatedText(
                                    'Bienvenue',
                                    textStyle: GoogleFonts.oswald(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  FlickerAnimatedText(
                                    'Welcome',
                                    textStyle: GoogleFonts.oswald(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  RotateAnimatedText(
                                    'Adéhù',
                                    textStyle: GoogleFonts.oswald(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        //fontSize: 25,
                                    ),
                                  ),
                                  WavyAnimatedText(
                                    'Wá ṣèyẹ̀',
                                    textStyle: GoogleFonts.oswald(
                                      //fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TypewriterAnimatedText(
                                    'Akwaba',
                                    textStyle: GoogleFonts.oswald(
                                      //fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //  TypewriterAnimatedText(
                                  //   'Akwaba',
                                  //   textStyle: GoogleFonts.oswald(
                                  //     fontSize: 25,
                                  //     fontWeight: FontWeight.bold,
                                  //   ),
                                  // ),
                                  // ColorizeAnimatedText(
                                  //   'Ndeh ndeh ndeh',
                                  //   textStyle: GoogleFonts.oswald(
                                  //       fontSize: 20,
                                  //       fontWeight: FontWeight.bold),
                                  //   colors: colorizeColors,
                                  // ),
                                  TyperAnimatedText(
                                    'Wé ndé wé',
                                    textStyle: GoogleFonts.oswald(
                                       fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  WavyAnimatedText(
                                    'Ndi ee',
                                    textStyle: GoogleFonts.oswald(
                                    //  fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  //TyperAnimatedText('DIFFERENT'),Ndi ee
                                ],
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("Tap Event");
                      },
                      child:  CustomButtom(
                        onPressed: (){
                          Get.to(SignUp());
                        },
                        buttomText: "S'inscrire",
                        transparent: false,
                        fontSize: 15,
                        icon: CupertinoIcons.person,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    CustomButtom(
                      onPressed: () {
                        Get.to(Login());
                      },
                      buttomText: "Se connecter",
                      transparent: false,
                      fontSize: 15,
                      icon: CupertinoIcons.person,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                     CustomButtom(
                      onPressed: (){Get.to(BottomBar());},
                      buttomText: "Visiter ->",
                      transparent: true,
                      fontSize: 15,
                      icon: CupertinoIcons.person,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
