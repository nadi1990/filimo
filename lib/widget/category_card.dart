import 'package:filimo/model/category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final Category category;

  CategoryCard({required this.category});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * .2,
      decoration:
          BoxDecoration(image: DecorationImage(fit: BoxFit.cover,alignment: Alignment.topCenter,image: NetworkImage(widget.category.imageUrl))),
      child: Stack(
        children: [
          Container(
              width: size.width,
              height: size.height * .2,
              color: Colors.black.withOpacity(.3)),
          Positioned(
            bottom: 0,
              right: 0,
              child: Container(
            width: size.width * .25,
            height: size.height * .2,
            child: Center(child: Text(widget.category.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: size.width*.05),)),
          ))
        ],
      ),
    );
  }
}
