import 'package:filimo/data/color.dart';
import 'package:filimo/model/slide.dart';
import 'package:filimo/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../model/Media.dart';
import '../model/category.dart';
import '../screens/category_screen.dart';

List<Media> vizhe = [
  Media(
      farsiName: "",
      englishName: "",
      imageUrl: "https://i.postimg.cc/QCtgcwJf/mov-122494-42614-m.jpg"),
  Media(
      farsiName: "",
      englishName: "",
      imageUrl: "https://i.postimg.cc/SK6G4WKf/mov-122258-42564-m.jpg"),
  Media(
      farsiName: "",
      englishName: "",
      imageUrl: "https://i.postimg.cc/bJ6kYLfk/1639288.jpg"),
  Media(
      farsiName: "",
      englishName: "",
      imageUrl: "https://i.postimg.cc/bwK6py9p/mov-93564-13543-m.jpg"),
  Media(
      farsiName: "",
      englishName: "",
      imageUrl: "https://i.postimg.cc/NfZ8rN9x/mov-rel-4766-1-m.jpg"),
];

List<Media> tazeha = [
  Media(
      farsiName: "سلاح برتر",
      englishName: "Top Gun",
      imageUrl: "https://i.postimg.cc/fyJXVXMF/Top-Gun-Maverick-01.jpg"),
  Media(
      farsiName: "همه یا هیچ چیز آرسنال",
      englishName: "All or nothing:Arsenal",
      imageUrl: "https://i.postimg.cc/LsLxscxf/mov-35270-42199-b.jpg"),
  Media(
      farsiName: "یاغی",
      englishName: "Rebel",
      imageUrl: "https://i.postimg.cc/jj0hB8Rj/mov-122258-42563-m.jpg"),
  Media(
      farsiName: "خانه اژدهایان",
      englishName: "House Of Dragons",
      imageUrl:
      "https://i.postimg.cc/nrgmBzzL/house-of-the-dragon-Poster-1.jpg"),
  Media(
      farsiName: "عصر یخبندان",
      englishName: "Ice Age ",
      imageUrl: "https://i.postimg.cc/26C7SVbR/mov-100094-22416-b.jpg"),
  Media(
      farsiName: "هشدار قرمز",
      englishName: "Red Notice",
      imageUrl: "https://i.postimg.cc/fy2KFDb4/mov-95117-15067-b.jpg"),
  Media(
      farsiName: "سرقت پول",
      englishName: "Money Heist",
      imageUrl: "https://i.postimg.cc/QCGtK6Qn/money-heist1.jpg"),
  Media(
      farsiName: "بریکینگ بد",
      englishName: "Breaking Bad",
      imageUrl: "https://i.postimg.cc/CMJk8BMN/breaking-bad1.jpg"),
  Media(
      farsiName: "13 دلیل برای اینکه",
      englishName: "13 Reason Why",
      imageUrl: "https://i.postimg.cc/Gpx38DPJ/13-reasons-why1.jpg"),
  Media(
      farsiName: "ویچر",
      englishName: "The Witcher",
      imageUrl: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg"),
  Media(
      farsiName: "ساخت ایران",
      englishName: "Sakhte Iran",
      imageUrl: "https://i.postimg.cc/bN5g9yMk/mov-95245-30023-b.jpg"),
  Media(
      farsiName: "دیدن",
      englishName: "See",
      imageUrl: "https://i.postimg.cc/mgMY3Q7W/mov-srl-26557-1-m.jpg"),
  Media(
      farsiName: "مورتا کمبات",
      englishName: "Mortal Kombat",
      imageUrl: "https://i.postimg.cc/3Rhn0tqq/mov-84199-291-b.jpg"),
  Media(
      farsiName: "روزی روزگاری مریخ",
      englishName: "Once Upon a Time Mars",
      imageUrl: "https://i.postimg.cc/RCsLvCvy/mov-119698-39213-b.jpg"),
  Media(
      farsiName: "جادوگر",
      englishName: "Sorcerer",
      imageUrl: "https://i.postimg.cc/dthm3M11/mov-113958-32355-b.jpg"),
];

List<Media> dagh = [
  Media(
      farsiName: "هشدار قرمز",
      englishName: "Red Notice",
      imageUrl: "https://i.postimg.cc/fy2KFDb4/mov-95117-15067-b.jpg"),
  Media(
      farsiName: "سرقت پول",
      englishName: "Money Heist",
      imageUrl: "https://i.postimg.cc/QCGtK6Qn/money-heist1.jpg"),
  Media(
      farsiName: "بریکینگ بد",
      englishName: "Breaking Bad",
      imageUrl: "https://i.postimg.cc/CMJk8BMN/breaking-bad1.jpg"),
  Media(
      farsiName: "13 دلیل برای اینکه",
      englishName: "13 Reason Why",
      imageUrl: "https://i.postimg.cc/Gpx38DPJ/13-reasons-why1.jpg"),
  Media(
      farsiName: "ویچر",
      englishName: "The Witcher",
      imageUrl: "https://i.postimg.cc/RCLPsL4x/witcher1.jpg"),
];

List<Media> tamasha = [
  Media(
      farsiName: "جنگ فردا",
      englishName: "The Tommorow War",
      imageUrl: "https://i.postimg.cc/Hxt3wQDk/mov-90600-396-b.jpg"),
  Media(
      farsiName: "زمانی برای مردن نیست",
      englishName: "No Time To Die",
      imageUrl: "https://i.postimg.cc/90FbJrCt/mov-93564-13528-b.jpg"),
  Media(
      farsiName: "100 نفر",
      englishName: "The 100",
      imageUrl: "https://i.postimg.cc/c4Lkc5Jy/mov-15009-1-m.jpg"),
  Media(
      farsiName: "مرد عنکبوتی",
      englishName: "Spiderman No Way Home",
      imageUrl: "https://i.postimg.cc/VsDD5BW7/mov-93563-29220-b.jpg"),
  Media(
      farsiName: "سونیک",
      englishName: "Sonic",
      imageUrl: "https://i.postimg.cc/qMDbDXtt/mov-28134-1-b.jpg"),
];

List<Media> mahoob = [
  Media(
      farsiName: "ساخت ایران",
      englishName: "Sakhte Iran",
      imageUrl: "https://i.postimg.cc/bN5g9yMk/mov-95245-30023-b.jpg"),
  Media(
      farsiName: "دیدن",
      englishName: "See",
      imageUrl: "https://i.postimg.cc/mgMY3Q7W/mov-srl-26557-1-m.jpg"),
  Media(
      farsiName: "مورتا کمبات",
      englishName: "Mortal Kombat",
      imageUrl: "https://i.postimg.cc/3Rhn0tqq/mov-84199-291-b.jpg"),
  Media(
      farsiName: "روزی روزگاری مریخ",
      englishName: "Once Upon a Time Mars",
      imageUrl: "https://i.postimg.cc/RCsLvCvy/mov-119698-39213-b.jpg"),
  Media(
      farsiName: "جادوگر",
      englishName: "Sorcerer",
      imageUrl: "https://i.postimg.cc/dthm3M11/mov-113958-32355-b.jpg"),
];

List<Widget>screens (){
  return [
    HomeScreen(),
    CategoryScreen(),
    Scaffold(backgroundColor: Colors.blue,)
  ];
}

List<PersistentBottomNavBarItem>navItems (){
  return [
    PersistentBottomNavBarItem(
      title: "ویترین",
      icon: Image.asset("assets/filimo.png"),
      activeColorPrimary: mainColor,
      inactiveColorPrimary: Colors.white54,
      inactiveIcon: Image.asset("assets/gray_icon.png"),
    ),
    PersistentBottomNavBarItem(
        title: "دسته بندی",
        icon: Icon(Icons.menu_outlined),
        activeColorPrimary: mainColor,
        inactiveColorPrimary:Colors.white54
    ),
    PersistentBottomNavBarItem(
        title: "فیلم های من",
        icon:Icon(CupertinoIcons.video_camera_solid) ,
        activeColorPrimary:mainColor ,
        inactiveColorPrimary:Colors.white54
    )
  ];
}

List<Category> categoryList = [
  Category(name: "ایرانی", imageUrl: "https://i.postimg.cc/Z5JwyrZ1/6.jpg"),
  Category(name: "سریال", imageUrl: "https://i.postimg.cc/sg3kZKL8/4.jpg"),
  Category(name: "کمدی", imageUrl: "https://i.postimg.cc/prZFN57F/10.jpg"),
  Category(name: "اکشن", imageUrl: "https://i.postimg.cc/qBnwbmvP/8.jpg"),
  Category(name: "هیجان انگیز", imageUrl: "https://i.postimg.cc/rsQKZX0G/9.jpg"),
  Category(name: "راز آلود", imageUrl: "https://i.postimg.cc/xTpXKQSn/12.png"),
  Category(name: "بیو گرافی", imageUrl: "https://i.postimg.cc/XYWzcRK1/5.jpg"),
  Category(name: "علمی تخیلی", imageUrl: "https://i.postimg.cc/wjbDTJB5/7.jpg"),
  Category(name: "تاریخی", imageUrl: "https://i.postimg.cc/NG1875NY/11.jpg"),
  Category(name: "ورزشی", imageUrl: "https://i.postimg.cc/Vs7XXN5F/1.jpg"),
  Category(name: "جنگی", imageUrl: "https://i.postimg.cc/FsdkcgM9/2.jpg"),
  Category(name: "وسترن", imageUrl: "https://i.postimg.cc/vBYHJbMT/3.jpg"),
];


List<Slide>sliderList = [
  Slide(title: "من در خطر نیستم خود خطرم",imageUrl:"https://i.postimg.cc/L4Y5LZW5/IMG-20221226 -110451-376.jpg"),
  Slide(title: "کاپیتان جک اسپارو",imageUrl:"https://i.postimg.cc/FKMyNBJT/POTC4-Jack-Sparrow-Poster.jpg"),
  Slide(title: "زمانی برای مردن نیست",imageUrl:"https://i.postimg.cc/0yL7BHqX/mov-32382-127-b.jpg"),
  Slide(title: "بزرگترین سرقت قرن",imageUrl:"https://i.postimg.cc/QCGtK6Qn/money-heist1.jpg"),
  Slide(title: " جنگ داخلی خاندان تارگریان",imageUrl:"https://i.postimg.cc/nrgmBzzL/house-of-the-dragon-Poster-1.jpg"),
];


