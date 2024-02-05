import 'package:filimo/data/color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../model/slide.dart';

class MainImage extends StatelessWidget {
  final Slide slide;

  MainImage({required this.slide});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height * 0.65,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  scaffoldColor.withOpacity(0.6),
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.transparent,
                  scaffoldColor.withOpacity(0.6),
                  scaffoldColor,
                ])),
          ),
          Positioned(
              right: 0,
              bottom: size.height * .03,
              child: Container(
                padding: EdgeInsets.only(right: size.width*.03),
                width: size.width,
                height: size.height * .2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     slide.title,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,fontSize: size.width*.04 ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: size.width*.35,
                      height: size.height * .05,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Iconsax.play5,color: Colors.black,size: size.width*.09,),
                          Text("اطلاعات بیشتر",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: size.width*.04),),

                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
      width: size.width,
      height: size.height * 0.65,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                 slide.imageUrl))),
    );
  }
}
