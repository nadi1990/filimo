import 'package:filimo/data/data.dart';
import 'package:filimo/model/Media.dart';
import 'package:filimo/screens/see_all_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../data/color.dart';
import 'media_card.dart';

class SeriesList extends StatelessWidget {
  final String title;
  final List list;
  final bool isHorizontall;


  SeriesList({required this.title,required this.list,this.isHorizontall=false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(right: size.width * .03),
      width: size.width,
      height: size.height * .4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: size.width * .04)),
              Spacer(),
              Text(
                "مشاهده همه",
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * .04),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SeeAllScreen(title: title, list: list, isHorizontall: isHorizontall)));
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: mainColor,
                  )),



            ],
          ),
          Container(
            width: size.width,
            height:isHorizontall? size.height * .25 : size.height*.3,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                Media media = list[index];
                return MediaCard(media: media , isHorizontall: isHorizontall,);
              },
              itemCount: list.length,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
