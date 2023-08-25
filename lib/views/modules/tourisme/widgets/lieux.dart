import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pango_afrika/utils/colors.dart';
import 'package:pango_afrika/views/modules/tourisme/widgets/product_detail_page.dart';
import 'package:pango_afrika/views/modules/tourisme/widgets/size_config.dart';


import 'app_styles.dart';

class PlacesScreens extends StatelessWidget {
  const PlacesScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 3,
                                offset: const Offset(1, 1),
                                color: Colors.grey.withOpacity(0.2),
                              )
                            ],

                          ),
                          child: TextField(
                            style: GoogleFonts.oswald(
                              color: Theme.of(context).cardColor,
                              //fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                            controller: TextEditingController(),
                            decoration: InputDecoration(

                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(
                                  8,
                                ),
                                // child: SvgPicture.asset(
                                //   'assets/icones/icon_search.svg',
                                // ),
                                child: Icon(CupertinoIcons.search),
                              ),
                              hintText: 'Chercher une adresse proche de vous',
                              border: kInputBorder,
                              errorBorder: kInputBorder,
                              disabledBorder: kInputBorder,
                              focusedBorder: kInputBorder,
                              enabledBorder: kInputBorder,
                              hintStyle: GoogleFonts.oswald(
                                color: kGrey85,
                                fontSize: 14,
                              ),
                              filled: true,
                              fillColor: kWhiteF7,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,

                      ),
                      Container(
                        height: 49,
                        width: 49,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.greenColor,
                          borderRadius: BorderRadius.circular(10),
                          //gradient:
                        ),
                        // child: SvgPicture.asset(
                        //   'assets/icones/icon_filter.svg',
                        // ),
                        child: Icon(Icons.filter_list_rounded,color: Colors.white,),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: kPadding24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nos recommandations',
                        style: kRalewayMedium.copyWith(
                          color: kBlack,
                         fontSize: 16,
                        ),
                      ),
                      Text(
                        'Voir plus',
                        style: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kPadding24,
                ),
                SizedBox(
                  height: 272,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (() => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetailPage(),
                          ),
                        )),
                        child: Container(
                          height: 272,
                          width: 222,
                          margin: EdgeInsets.only(
                            left: 20,
                            right: index == 5 - 1 ? 20 : 0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0,
                                offset: const Offset(0, 18),
                                blurRadius: 18,
                                color: kBlack.withOpacity(0.1),
                              )
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/icones/paradis-paysage-climatique-coucher-du-soleil-hotel.jpg',
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 136,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft:
                                      Radius.circular(20),
                                      bottomRight:
                                      Radius.circular(20),
                                    ),
                                    gradient: kLinearGradientBlack,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 20,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(
                                                20,
                                              ),
                                              color: kBlack.withOpacity(
                                                0.24,
                                              ),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 4,
                                            ),
                                            child: Row(
                                              children: [
                                                // SvgPicture.asset(
                                                //   'assets/icon_pinpoint.svg',
                                                // ),
                                                const SizedBox(
                                                  width: kPadding4,
                                                ),
                                                Text(
                                                  '1.8 km',
                                                  style: kRalewayRegular.copyWith(
                                                    color: kWhite,
                                                    fontSize: 16
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Rond point Deido',
                                            style: kRalewayMedium.copyWith(
                                              color: kWhite,
                                              fontSize: 14,
                                            ),
                                          ),
                                          SizedBox(
                                            height:
                                            5
                                          ),
                                          Row(
                                            children: [
                                              Icon(CupertinoIcons.placemark, size: 15,color: Colors.deepOrangeAccent,),
                                              SizedBox(
                                                  width: 5
                                              ),
                                              Text(
                                                'Douala, Cameroun',
                                                style: GoogleFonts.oswald(
                                                  color: kWhite,
                                                  fontSize: 12
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: kPadding24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Decouvertes',
                        style: kRalewayMedium.copyWith(
                          color: kBlack,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'voir plus',
                        style: kRalewayRegular.copyWith(
                          color: kGrey85,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: kPadding24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 70,
                        margin: const EdgeInsets.only(
                          bottom: 24,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Colors.grey[200]!,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(
                              1, 1,), // changes position of shadow
                          ),],
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(kBorderRadius10!),
                                // boxShadow: [
                                //   BoxShadow(
                                //     spreadRadius: 0,
                                //     offset: const Offset(0, 18),
                                //     blurRadius: 18,
                                //     color: kBlack.withOpacity(0.1),
                                //   )
                                // ],
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    'assets/icones/paradis-paysage-climatique-coucher-du-soleil-hotel.jpg',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Douala',
                                    style: kRalewayMedium.copyWith(
                                      color: kBlack,
                                     fontSize:16
                                    ),
                                  ),
                                  SizedBox(
                                    //height: SizeConfig.blockSizeVertical! * 0.5,
                                  ),
                                  Text(
                                    'Cameroun',
                                    style: kRalewayRegular.copyWith(
                                      color: kBlue,
                                      fontSize: 12
                                      //SizeConfig.blockSizeHorizontal! * 2.5,
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(CupertinoIcons.placemark),
                                            SizedBox(
                                              width: 5
                                            ),
                                            Text(
                                              '1 km',
                                              style: kRalewayRegular.copyWith(
                                                color: kGrey85,
                                                fontSize: 12
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
