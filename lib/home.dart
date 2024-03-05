import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/AppDrawer.dart';
import 'package:flutter_application_1/components/HorizontalCarousel.dart';
import 'package:flutter_application_1/components/Product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousal = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/1.jpg'),
          AssetImage('images/2.jpg'),
          AssetImage('images/3.jpg'),
          AssetImage('images/4.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 1000),
        indicatorBgPadding: 4,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 9,
        title: Text("K Sai Rajesh"),
        actions: [
          new IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      drawer: AppDrawer(),
      body: new ListView(
        children: [
          image_carousal,
          new Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text("Categories")),
          HorizontalCarousel(),
          new Padding(
              padding: const EdgeInsets.fromLTRB(8, 50, 8, 8),
              child: const Text("Products")),
          Container(
            height: 320,
            padding: EdgeInsets.all(8.0),
            child: Products(),
          )
        ],
      ),
    );
  }
}
