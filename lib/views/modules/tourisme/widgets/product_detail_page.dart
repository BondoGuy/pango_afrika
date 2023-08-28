import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pango_afrika/views/modules/tourisme/widgets/size_config.dart';

import '../../../../models/tourismeModel.dart';
import 'app_styles.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.place}) : super(key: key);
  final Map<String, dynamic> place;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      //appBar: AppBar(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Container(
      //   padding:  EdgeInsets.symmetric(
      //     horizontal: kPadding8,
      //   ),
      //   height: 43,
      //   width: double.infinity,
      //   margin: const EdgeInsets.symmetric(
      //     horizontal: kPadding20,
      //   ),
      //   child: Row(
      //     children: [
      //       Expanded(
      //         child: SingleChildScrollView(
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               Text(
      //                 'Price',
      //                 style: kRalewayRegular.copyWith(
      //                   color: kGrey85,
      //                   fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: SizeConfig.blockSizeVertical! * 0.5,
      //               ),
      //               Text(
      //                 'Rp. 2.500.000.000 / Year',
      //                 style: kRalewayMedium.copyWith(
      //                   color: kBlack,
      //                   fontSize: SizeConfig.blockSizeHorizontal! * 4,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           debugPrint('Rent Now Tapped');
      //         },
      //         child: Container(
      //           height: 43,
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(
      //               kBorderRadius10,
      //             ),
      //             gradient: kLinearGradientBlue,
      //           ),
      //           padding: const EdgeInsets.symmetric(
      //             horizontal: kPadding24,
      //           ),
      //           child: Center(
      //             child: Text(
      //               'Rent Now',
      //               style: kRalewaySemibold.copyWith(
      //                 color: kWhite,
      //                 fontSize: SizeConfig.blockSizeHorizontal! * 4,
      //               ),
      //             ),
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 319,
                width: double.infinity,
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
                  image:   DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        place['imgUrl']
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          gradient: kLinearGradientBlack,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.back();
                                },
                                child: CircleAvatar(
                                  radius: 17,
                                  backgroundColor: kBlack.withOpacity(0.24),
                                  child: SvgPicture.asset(
                                    'assets/icones/icon_arrow_back.svg',
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:kBlack.withOpacity(0.24),
                                child: Text(
                                  place['localisation'],
                                  style: GoogleFonts.oswald(
                                    color: kWhite,
                                    fontSize:12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                place['title'],
                                style: GoogleFonts.oswald(
                                  color: kWhite,
                                  fontSize:
                                      16,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(

                                    children: [
                                      Container(
                                        // height:
                                        //     MediaQuery.of(context).size.height/2.5,

                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        padding:
                                            const EdgeInsets.all(4),
                                        // child: SvgPicture.asset(
                                        //   'assets/icones/icon_bedroom_white.svg',
                                        // ),
                                        child: Icon(Icons.star, color: Colors.orange,size: 15,),
                                        //child: Icon(CupertinoIcons.star_circle,size: 15,color: Colors.deepOrangeAccent,),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            place['avis'],
                                            style: GoogleFonts.oswald(
                                              color: kWhite,
                                              fontSize:
                                                  16,
                                            ),
                                          ),
                                          SizedBox(width: 3,),
                                          Text(
                                            'avis',
                                            style: GoogleFonts.oswald(
                                              color: kWhite,
                                              fontSize:
                                              16,
                                            ),
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                  Row( 
                                    children: [
                                      Container(
                                        // height:
                                        //     SizeConfig.blockSizeHorizontal! * 7,
                                        // width:
                                        //     SizeConfig.blockSizeHorizontal! * 7,
                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        padding:
                                            const EdgeInsets.all(4),
                                        child: Icon(CupertinoIcons.placemark, color: Colors.orange,size: 15,),
                                        // child: SvgPicture.asset(
                                        //   'assets/icones/icon_bathroom_white.svg',
                                        // ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        place['town'],
                                        style: GoogleFonts.oswald(
                                          color: kWhite,
                                          fontSize:
                                              16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        // height:
                                        //     SizeConfig.blockSizeHorizontal! * 7,
                                        // width:
                                        //     SizeConfig.blockSizeHorizontal! * 7,
                                        decoration: BoxDecoration(
                                          color: kWhite.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        padding:
                                        const EdgeInsets.all(4),
                                        child: Icon(CupertinoIcons.bookmark, color: Colors.orange,size: 15,),
                                        // child: SvgPicture.asset(
                                        //   'assets/icones/icon_bathroom_white.svg',
                                        // ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Favorie',
                                        style: GoogleFonts.oswald(
                                          color: kWhite,
                                          fontSize:
                                          16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      place['description'],
                      style: GoogleFonts.oswald(
                        color: kBlack,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  //Icon(CupertinoIcons.textformat,size: 10,)
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              // ReadMoreText(
              //   'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars',
              //   trimLines: 2,
              //   trimMode: TrimMode.Line,
              //   delimiter: '...',
              //   trimCollapsedText: 'Show More',
              //   trimExpandedText: 'Show Less',
              //   style: kRalewayRegular.copyWith(
              //     color: kGrey85,
              //     fontSize: SizeConfig.blockSizeHorizontal! * 3,
              //   ),
              //   moreStyle: kRalewayRegular.copyWith(
              //     color: kBlue,
              //     fontSize: SizeConfig.blockSizeHorizontal! * 3,
              //   ),
              //   lessStyle: kRalewayRegular.copyWith(
              //     color: kBlue,
              //     fontSize: SizeConfig.blockSizeHorizontal! * 3,
              //   ),
              // ),
              // const SizedBox(
              //   height: kPadding24,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Row(
              //       children: [
              //         const CircleAvatar(
              //           radius: 20,
              //           backgroundImage: NetworkImage(
              //             'https://blogger.googleusercontent.com/img/a/AVvXsEiRB_dB-wXqJdvt26dkR-vqOXUjacfxAQIgFNMHl_czjMNDOh6VZVc-muCczDKZh-VU0JqUYV1M9h25ZooLGqhVfwexQO6zNY1jxeMDu0-SpfEPe8xkF7re1eldAkKld9Ct1YzesFmHpQK9wlPK330AXA85gsmDBURTQm3i7r08g6vO7KNtAPyDgeUIaQ=s740',
              //           ),
              //           backgroundColor: kBlue,
              //         ),
              //         SizedBox(
              //           width: SizeConfig.blockSizeHorizontal! * 4,
              //         ),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text(
              //               'Abdul Aziz Ahwan',
              //               style: kRalewayMedium.copyWith(
              //                 color: kBlack,
              //                 fontSize: SizeConfig.blockSizeHorizontal! * 4,
              //               ),
              //             ),
              //             SizedBox(
              //               height: SizeConfig.blockSizeVertical! * 0.2,
              //             ),
              //             Text(
              //               'Owner',
              //               style: kRalewayMedium.copyWith(
              //                 color: kGrey85,
              //                 fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
              //               ),
              //             ),
              //           ],
              //         )
              //       ],
              //     ),
              //     Row(
              //       children: [
              //         Container(
              //           height: 28,
              //           width: 28,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(kBorderRadius5),
              //             color: kBlue.withOpacity(0.5),
              //           ),
              //           child: SvgPicture.asset(
              //             'assets/icon_phone.svg',
              //           ),
              //         ),
              //         SizedBox(
              //           width: SizeConfig.blockSizeHorizontal! * 4,
              //         ),
              //         Container(
              //           height: 28,
              //           width: 28,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(kBorderRadius5),
              //             color: kBlue.withOpacity(0.5),
              //           ),
              //           child: SvgPicture.asset(
              //             'assets/icon_message.svg',
              //           ),
              //         ),
              //       ],
              //     )
              //   ],
              // ),
              // const SizedBox(
              //   height: kPadding24,
              // ),
              // Gallerie
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Galerie',
                    style: GoogleFonts.oswald(
                      color: kBlack,
                      fontSize: 18,
                    ),
                  ),

                  Icon(CupertinoIcons.photo_on_rectangle, size: 10,)
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kBlue,
                      image:  DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          places[index]['galery'][index],
                        ),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: index == 4 - 1 ? kBlack.withOpacity(0.3) : null,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: index == 4 - 1
                            ? Text(
                                '+5',
                                style: GoogleFonts.oswald(
                                  color: kWhite,
                                  fontSize: 20
                                ),
                              )
                            : null,
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Voir sur la carte',
                          style: GoogleFonts.oswald(
                        color: kBlack,
                        fontSize: 18,
                      )),
                      Icon(CupertinoIcons.map, size: 10,)
                    ],
                  ),
                  const SizedBox(
                    height: kPadding24,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(0.2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/icones/map_sample.png',
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
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              gradient: kLinearGradientWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
