import 'package:carousel_slider/carousel_slider.dart';
import 'package:filimo/data/data.dart';
import 'package:filimo/model/slide.dart';
import 'package:filimo/widget/main_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        child: Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider.builder(
                itemCount: sliderList.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  Slide slide = sliderList[index];
                  return MainImage(slide: slide);
                },
                options: CarouselOptions(
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    height: size.height,
                    autoPlayInterval: Duration(seconds: 2),
                    // reverse: true,
                    // scrollDirection: Axis.vertical
                    // initialPage: 2,
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    })),
            Positioned(
                bottom: 0,
                child: Container(
                  width: size.width * .25,
                  height: size.height * .02,
                  child: AnimatedSmoothIndicator(
                    activeIndex: activeIndex,
                    count: sliderList.length,
                    effect: WormEffect(
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 2,
                        dotColor: Colors.white,
                        activeDotColor: Colors.white),
                  ),
                ))
          ],
        ));
  }
}
