import 'package:filimo/data/color.dart';
import 'package:filimo/model/Media.dart';
import 'package:filimo/widget/media_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class SeeAllScreen extends StatefulWidget {
  final String title;
  final List list;
  final bool isHorizontall;

  SeeAllScreen(
      {required this.title, required this.list, this.isHorizontall = false});

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            foregroundColor: Colors.white,
            elevation: 0,
            floating: true,
            backgroundColor: scaffoldColor,
            expandedHeight: size.height * .12,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.title,
                style:
                    TextStyle(color: Colors.white, fontSize: size.width * .05),
              ),
              centerTitle: true,
              titlePadding: EdgeInsets.only(left: 0, right: 0, bottom: 20),
              background: Container(
                color: mainColor,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: size.height * .02),
            sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  Media media = widget.list[index];
                  return AnimationConfiguration.staggeredGrid(
                    position: index,
                    duration: Duration(milliseconds: 1000),
                    columnCount: 2,
                    child: FadeInAnimation(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: Duration(milliseconds: 3000),
                        child: ScaleAnimation(
                            duration: Duration(milliseconds: 1000),
                            child: MediaCard(
                              media: media,
                              isHorizontall: false,
                              haveMargin: false,
                            ))),
                  );
                }, childCount: widget.list.length),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .70,
                    mainAxisSpacing: size.height * .01,
                    crossAxisSpacing: size.width * .01)),
          )
        ],
      ),
    );
  }
}
