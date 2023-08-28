import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pango_afrika/utils/colors.dart';
import 'package:pango_afrika/views/modules/tourisme/Module_cat.dart';
import 'package:pango_afrika/widgets/big_text.dart';
import '../models/Categories.dart';
import '../views/modules/tourisme/widgets/lieux.dart';

class Tourisme extends StatelessWidget {
  const Tourisme({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Tourisme
              GestureDetector(
                onTap: () {
                  Get.to(PlacesScreens());
                },
                child: Container(
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 3,
                        offset: const Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(
                      16.0,
                    ),
                    color: Theme.of(context).cardColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icones/tourisme.png'),
                                fit: BoxFit.fitHeight)),
                      ),
                      Container(
                        height: 50,
                        child: BigText(
                          text: 'Tourisme',
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              //Qrtrisanat
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/icones/poterie (1).png'),
                              fit: BoxFit.fitHeight)),
                    ),
                    Container(
                      height: 50,
                      child: BigText(
                        text: 'Artisanat',
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/icones/mode.png'),
                              fit: BoxFit.fitHeight)),
                    ),
                    Container(
                      height: 50,
                      child: BigText(
                        text: 'Mode',
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                  color: Theme.of(context).cardColor,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/icones/recherche-demploi.png'),
                              fit: BoxFit.fitHeight)),
                    ),
                    Container(
                      height: 50,
                      child: BigText(
                        text: 'Emploi',
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
    // return  GestureDetector(
    //   onTap: (){
    //     Get.to(TourismeCategories());
    //   },
    //   child: Padding(
    //     padding: const EdgeInsets.only(left: 15,right: 15),
    //     child: GridView.builder(
    //       physics: const NeverScrollableScrollPhysics(),
    //       shrinkWrap: true,
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 2,
    //         crossAxisSpacing: 10.0,
    //         mainAxisSpacing: 12.0,
    //         mainAxisExtent: 200,
    //       ),
    //       itemCount: categories.length,
    //       itemBuilder: (_, index) {
    //         return SingleChildScrollView(
    //           child: Container(
    //             width: 500,
    //             decoration: BoxDecoration(
    //               boxShadow: [
    //                 BoxShadow(
    //                   blurRadius: 10,
    //                   spreadRadius: 3,
    //                   offset: const Offset(1, 1),
    //                   color: Colors.grey.withOpacity(0.2),
    //                 )
    //               ],
    //               borderRadius: BorderRadius.circular(
    //                 16.0,
    //               ),
    //               color: Theme.of(context).cardColor,
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 ClipRRect(
    //                   borderRadius: const BorderRadius.only(
    //                     topLeft: Radius.circular(16.0),
    //                     topRight: Radius.circular(16.0),
    //                   ),
    //                   child: Image.asset(
    //                     "${categories.elementAt(index)['imgUrl']}",
    //                     height: 150,
    //                     //width: double.infinity,
    //                     fit: BoxFit.cover,
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                         "${categories.elementAt(index)['name']}",
    //                         style: Theme.of(context).textTheme.titleMedium!.merge(
    //                           const TextStyle(
    //                             fontWeight: FontWeight.w700,
    //                           ),
    //                         ),
    //                       ),
    //
    //                       // Row(
    //                       //   children: [
    //                       //     IconButton(
    //                       //       onPressed: () {},
    //                       //       icon: const Icon(
    //                       //         CupertinoIcons.heart,
    //                       //       ),
    //                       //     ),
    //                       //     IconButton(
    //                       //       onPressed: () {},
    //                       //       icon: const Icon(
    //                       //         CupertinoIcons.cart,
    //                       //       ),
    //                       //     ),
    //                       //   ],
    //                       // ),
    //                     ],
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
