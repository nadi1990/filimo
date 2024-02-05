import 'package:flutter/material.dart';

import '../model/Media.dart';

class MediaCard extends StatelessWidget {
  Media media;
  final bool isHorizontall;
  final bool haveMargin;


  MediaCard({required this.media, required this.isHorizontall, this.haveMargin = true});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only( left: haveMargin? size.width * .03 : 0),
      width: isHorizontall ? size.width * .75 : size.width * .4,
      height: isHorizontall ? size.height * .25 : size.height,
      child: Column(children: [
        Container(
          width: isHorizontall ? size.width * .75 : size.width * .4,
          height: size.height * .22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(media.imageUrl))),
        ),
        !isHorizontall
            ? Container(
                width: size.width* .4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      media.farsiName,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      media.englishName,
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            : SizedBox.shrink()
      ]),
    );
  }
}
