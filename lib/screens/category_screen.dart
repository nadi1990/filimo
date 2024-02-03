import 'package:filimo/data/color.dart';
import 'package:filimo/data/data.dart';
import 'package:filimo/widget/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../model/category.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: isSearch ? true : false,
          floating: true,
          backgroundColor: scaffoldColor,
          actions: [
            !isSearch
                ? Container(
                    width: size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.02),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isSearch = true;
                              });
                            },
                            icon: Icon(Icons.search, color: Colors.white)),
                        Container(
                          width: size.width * 0.07,
                          height: size.width * 0.07,
                          margin: EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 1),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.icon-icons.com/icons2/2645/PNG/512/person_circle_icon_159926.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Spacer(),
                        Image.network(
                          "https://attachments-us1-cloud-deskpro-com.s3.amazonaws.com/files/35988/14/13111WNZWKWNBPRDQWMR0-61765b5714662_logo-color-black-512px.png",
                          width: size.width * 0.2,
                          height: size.height * 0.08,
                        )
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: size.width * .04),
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * .7,
                          child: TextField(
                            cursorColor: mainColor,
                            decoration: InputDecoration(
                                hintText: "موتور جستجو",
                                hintStyle: TextStyle(
                                    color: Colors.white54,
                                    fontWeight: FontWeight.w700,
                                    fontSize: size.width * .04),
                                enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isSearch = false;
                              });
                            },
                            color: Colors.white,
                            icon: Icon(Icons.arrow_forward))
                      ],
                    ),
                  )
          ],
        ),
        !isSearch
            ? SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                Category category = categoryList[index];
                return AnimationConfiguration.staggeredGrid(
                    duration: Duration(milliseconds: 100),
                    position: index,
                    columnCount: categoryList.length,
                    child: SlideAnimation(
                        duration: Duration(milliseconds: 500),
                        horizontalOffset: 30.0,
                        curve: Curves.fastLinearToSlowEaseIn,
                        child: FlipAnimation(
                          duration: Duration(milliseconds: 500),
                          flipAxis: FlipAxis.y,
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: CategoryCard(
                            category: category,
                          ),
                        )));
              }, childCount: categoryList.length))
            : SliverToBoxAdapter(
                child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(fit: BoxFit.fill,
                        image: NetworkImage(
                            "https://i.postimg.cc/y8f92vHw/Screenshot-20221225-153919-Filimo.jpg"))),
              ))
      ],
    );
  }
}
