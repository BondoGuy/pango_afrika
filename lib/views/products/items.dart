import 'package:flutter/material.dart';
import 'package:pango_afrika/widgets/big_text.dart';

import '../../utils/colors.dart';


class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        title: BigText(text: 'Lieux Historiques',color: Colors.white,),
        backgroundColor: AppColors.greenColor,
      ),
    );
  }
}
