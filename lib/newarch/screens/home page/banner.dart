import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/newarch/screens/wishPage.dart';

import '../cart_screen.dart';
class Banner1 extends StatefulWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  State<Banner1> createState() => _Banner1State();
}

class _Banner1State extends State<Banner1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arche'),
        backgroundColor: Colors.black,
        actions:[ IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => Wish()));
            },
            icon:  Icon(Icons.favorite)),Padding(padding: EdgeInsets.all(5)),
          IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage()));
              },
              icon:  Icon(Icons.shopping_cart_rounded)),],


      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child:  ListView(
          children: [
            CarouselSlider(
                items:[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/ban1.png')
                        )
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/ban2.png')
                        )
                    ),
                  )
                ],
                options:CarouselOptions(
                  enlargeCenterPage:true,
                  autoPlay:true,
                  autoPlayCurve:Curves.fastOutSlowIn,
                  enableInfiniteScroll:true,
                  autoPlayAnimationDuration:Duration(milliseconds: 2000),
                  viewportFraction:0.8,
                )
            )],
        ),),

    );
  }
}
