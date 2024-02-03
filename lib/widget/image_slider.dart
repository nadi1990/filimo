import 'package:carousel_slider/carousel_slider.dart';
import 'package:filimo/data/data.dart';
import 'package:filimo/model/slide.dart';
import 'package:filimo/widget/main_image.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .65,
      child: CarouselSlider.builder(
          itemCount: sliderList.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            Slide slide = sliderList[index];
            return MainImage(slide: slide);
          },
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
              height: size.height,
              autoPlayInterval: Duration(seconds: 2),
              // reverse: true,
            // scrollDirection: Axis.vertical
            // initialPage: 2,
            onPageChanged: (index,reason){
                setState(() {
                  activeIndex = index;
                });
            }
          )),
    );
  }
}
