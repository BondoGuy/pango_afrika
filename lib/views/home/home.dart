import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pango_afrika/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pango_afrika/widgets/big_text.dart';

import '../../categorie/Tourisme.dart';
import '../../models/banner.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        //backgroundColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: false,
        titleSpacing: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: 5),
              child: Builder(builder: (context)=> IconButton(
                  onPressed: ()=>Scaffold.of(context).openDrawer(),
                  icon: SvgPicture.asset('assets/svg/menu.svg',
                height: 25,
                width: 34,
                    //color: Colors.white,
                color: AppColors.greenColor,
              ),),),
            ),
            const SizedBox(
              height: 50,
              width: 100,
              child: Image(
                image: AssetImage("assets/images/globe.png"),
                fit: BoxFit.fitHeight,
                //color: AppColors.greenColor,
              ),
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/svg/notification.svg",
                height: 25,
                width: 34,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            //height: 200,
            width: MediaQuery.of(context).size.width/1,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                enlargeCenterPage: true,
                pauseAutoPlayOnManualNavigate: true,
                autoPlay: true,
                viewportFraction: 0.8,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration:
                const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
              ),
              itemCount: banner.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
              return Padding(
                    padding:   const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Container(
                      //height: MediaQuery.of(context).size.height/7,
                      height:100,
                      width: MediaQuery.of(context).size.width/1,
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.grey[500]!,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(
                          1, 1,), // changes position of shadow
                      ),],
                      image: DecorationImage(image: AssetImage('${banner.elementAt(index)['imgUrl']}'),fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                    color: Colors.amber.shade200,
                    ),
                      //child: BigText(text: 'Text',size: 30,color: Colors.white,),
              ),
                    //SizedBox(height: 5,),
                    Container(
                        width: MediaQuery.of(context).size.width/1,
                      height: 30,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          boxShadow: [BoxShadow(
                            color: Colors.grey[500]!,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(
                              1, 1,), // changes position of shadow
                          ),],
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                        ),
                        child: Center(child: BigText(text: '${banner.elementAt(index)['title']}', size: 20,)))
                  ],
                ),);
              },
            ),
          ),
          Tourisme(),
        ],
      )
    );
  }
}
