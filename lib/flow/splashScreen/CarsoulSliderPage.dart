// ignore_for_file: file_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List imgList = [
 'assets/SliderHomePage.svg'
 'assets/SliderHomePage.svg'
 'assets/SliderHomePage.svg'
 'assets/SliderHomePage.svg'
];

// ignore: use_key_in_widget_constructors
class ImageSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image slider demo')),
      // ignore: avoid_unnecessary_containers
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true, aspectRatio: 2, enlargeCenterPage: true),
        items: imgList
            // ignore: avoid_unnecessary_containers
            .map((item) => Container(
                  child: Center(
                      child:
                          Image.network(item, fit: BoxFit.cover, width: 1000)),
                ))
            .toList(),
      )),
    );
  }
}

final List<Widget> imageSliders = imgList
    // ignore: avoid_unnecessary_containers
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.2,
                      right: 0.2,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            // ignore: prefer_const_literals_to_create_immutables
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();
