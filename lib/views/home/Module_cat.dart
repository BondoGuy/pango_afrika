import 'package:flutter/material.dart';
import 'package:pango_afrika/widgets/big_text.dart';

import '../../utils/colors.dart';



class TourismeCategories extends StatelessWidget {
  const TourismeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.greenColor,
        title: BigText(text: 'Tourisme',size: 20,color: Colors.white,),

      ),
    );
  }
}
