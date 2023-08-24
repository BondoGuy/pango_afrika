import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pango_afrika/views/products/items.dart';
import 'package:pango_afrika/widgets/big_text.dart';

import '../../models/Categories.dart';
import '../../utils/colors.dart';



class TourismeCategories extends StatelessWidget {
  const TourismeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.greenColor,
        elevation: 1,
        title: BigText(text: 'Tourisme',size: 20,color: Colors.white,)
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: GestureDetector(
          onTap: (){
            Get.to(ItemsScreen());
            print('pressed');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 12.0,
                mainAxisExtent: 200,
              ),
              itemCount: tourisme.length,
              itemBuilder: (_, index) {
                return SingleChildScrollView(
                  child: Container(
                    width: 500,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          child: Image.asset(
                            "${tourisme.elementAt(index)['imgUrl']}",
                            height: 150,
                            //width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${tourisme.elementAt(index)['name']}",
                                style: Theme.of(context).textTheme.titleMedium!.merge(
                                  const TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),

                              // Row(
                              //   children: [
                              //     IconButton(
                              //       onPressed: () {},
                              //       icon: const Icon(
                              //         CupertinoIcons.heart,
                              //       ),
                              //     ),
                              //     IconButton(
                              //       onPressed: () {},
                              //       icon: const Icon(
                              //         CupertinoIcons.cart,
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      )
    );
  }
}