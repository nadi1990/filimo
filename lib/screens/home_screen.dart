import 'package:filimo/data/color.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double scrollOffset = 0.0;
  late ScrollController scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController()..addListener(() {
      setState(() {
        scrollOffset = scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: scaffoldColor,
        appBar: PreferredSize(
          preferredSize: Size(size.width, size.height * 0.1),
          child: Container(
            width: size.width,
            height: size.height * 0.1,
            color: scaffoldColor.withOpacity((scrollOffset/450).clamp(0, 1).toDouble()),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu, color: Colors.white)),
                IconButton(
                    onPressed: () {},
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
                Image.network("https://attachments-us1-cloud-deskpro-com.s3.amazonaws.com/files/35988/14/13111WNZWKWNBPRDQWMR0-61765b5714662_logo-color-black-512px.png",width: size.width*0.2,height: size.height*0.08,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
