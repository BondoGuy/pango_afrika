import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pango_afrika/utils/colors.dart';
import 'package:pango_afrika/views/auth/auth_screen.dart';
import 'package:pango_afrika/widgets/big_text.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'empty_card.dart';

class CountrySelector extends StatefulWidget {
  final double? width;
  final double? height;
  const CountrySelector({super.key, this.width, this.height});

  @override
  State<CountrySelector> createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  int columnCount = 2;
  @override
  Widget build(BuildContext context) {
    List<String> FlagList = [
      'benin.png',
      'burkinafaso.png',
      'cameroun.png',
      'coteivoire.png',
      'gabon.png',
      'mali.png',
      'senegal.png',
      'togo.png',
    ];
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,backgroundColor: AppColors.greenColor,elevation: 3,),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50, top: 25),
            child: Container(
              height: MediaQuery.of(context).size.height/15,
              width: MediaQuery.of(context).size.width/1,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).cardColor,
                boxShadow: [BoxShadow(
                  color: Colors.grey[500]!,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(
                      1, 3,), // changes position of shadow
                ),]
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10, top: 5),
                child: Center(child: BigText(text: 'VEUILLEZ SELECTIONNER VOTRE PAYS',size: 10,)),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: MediaQuery.of(context).size.height/1.5,
            child: AnimationLimiter(
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(8.0),
                crossAxisCount: columnCount,
                children: List.generate(8,
                      (int index) {
                    return AnimationConfiguration.staggeredGrid(
                      columnCount: columnCount,
                      position: index,
                      duration: const Duration(milliseconds: 2000),
                      child:  ScaleAnimation(
                        scale: 2,
                        child: FadeInAnimation(
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: GestureDetector(
                              onTap: (){
                                Get.to(AuthScreen());
                                //EasyLoading.showProgress(0.3, status: 'Veuillez patienter...');
                                EasyLoading.showSuccess('Pays choisi !');
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                                decoration:  BoxDecoration(
                                  image: DecorationImage(image: AssetImage(
                                    'assets/images/drapeaux/${FlagList[index]}'
                                  ),fit: BoxFit.fill,),
                                  borderRadius: BorderRadius.circular(5),
                                    boxShadow: [BoxShadow(
                                      color: Colors.grey[500]!,
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(
                                        1, 3,), // changes position of shadow
                                    ),]
                                ),

                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
