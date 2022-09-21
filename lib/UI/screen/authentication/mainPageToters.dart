import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:toters_dna/UI/screen/authentication/profilePage.dart';
import 'package:toters_dna/UI/screen/authentication/reguestPage.dart';
import 'package:toters_dna/UI/screen/authentication/resturantPage.dart';
import 'package:toters_dna/UI/screen/authentication/searchPage.dart';
import 'package:toters_dna/UI/screen/authentication/deliveryPage.dart';
import 'package:toters_dna/UI/screen/authentication/resturant2Page.dart';
var text_offer=[""];
var mintext=[""];
var img=[""];
var tag_rate=[];
var tag_resturant=[""];
var location=[""];
var test_offer2=[""];
var mintext2=[""];
var resturant=[""];
var imagrest=[""];
var description=[""];
var name=[""];
var type=[""];
var time=[""];
var food=[""];
var note=[""];
class mypage extends StatefulWidget {
  @override
  State<mypage> createState() => _mypageState();
}

class _mypageState extends State<mypage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  // final List<String> listImages = [
  //   'images/img_4.png',
  //   'images/img_3.png',
  //   'images/img_2.png'
  //
  // ];

  final String textS = 'فاير فاير';
  final String num = '37 - 27';
  final String mint = 'دقائق';
  final String img2 =
      'https://images.pexels.com/photos/2983098/pexels-photo-2983098.jpeg?auto=compress&cs=tinysrgb&w=600';
  final String points = 'اكتساب نقاط';
  final String burg = 'برغر.';
  final double doubleNum = 4.9;
  final String text2 =
      'نقدم ألذ سندويشات البركر المميزة مع الصلصات ألامريكية والغريبه الخاصه';

  final String textsweet1 = 'فاير فاير';
  final String Numsweet1 = '37 - 27';
  final String Minsweet1= 'دقائق';
  final String Imagessweet1 =
      'https://images.pexels.com/photos/2983098/pexels-photo-2983098.jpeg?auto=compress&cs=tinysrgb&w=600';
  final String Pointsweet1 = 'اكتساب نقاط';
  final String sweet1 = 'برغر.';
  final double Numsweet21 = 4.9;
  final String textsweet21 =
      'نقدم ألذ سندويشات البركر المميزة مع الصلصات ألامريكية والغريبه الخاصه';

  Future getData() async{
    var url=Uri.parse("http://localhost:4000/main");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);
     text_offer.clear();
     mintext.clear();
     img.clear();
    tag_rate.clear();
    tag_resturant.clear();
    location.clear();
   test_offer2.clear();
     mintext2.clear();
     resturant.clear();
     food.clear();
     note.clear();
    for (int i=0; i<list1.length; i++){
      setState(() {
        text_offer.add("${list1[i]["text_offer"]}");
        mintext.add("${list1[i]["mintext"]}");
        img.add("${list1[i]["img"]}");
        tag_rate.add("${list1[i]["tag_rate"]}");
        tag_resturant.add("${list1[i]["tag_resturant"]}");
        location.add("${list1[i]["loction"]}");
        test_offer2.add("${list1[i]["test_offer2"]}");
        mintext2.add("${list1[i]["mintext2"]}");
        food.add("${list1[i]["food"]}");
        note.add("${list1[i]["note"]}");

      });
      print(list1);
    }
  }

  Future getData2() async{
    var url=Uri.parse("http://localhost:4000/rest");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);
    imagrest.clear();
    time.clear();
    description.clear();
    name.clear();
    type.clear();
    for (int i=0; i<list1.length; i++){
      setState(() {
        imagrest.add("${list1[i]["img"]}");
        time.add("${list1[i]["d_time"]}");
        description.add("${list1[i]["description"]}");
        name.add("${list1[i]["name"]}");
        type.add("${list1[i]["type"]}");

        
      });
      print(list1);
    }
  }
  void initState(){
    super.initState();
    getData();
    getData2();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.list,
              color: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            Icon(
              Icons.notifications_none,
              color: Colors.grey,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0, right: 6),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    Text(
                      'توصيل الى',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    ///database
                    Text(
                      location[0],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        elevation: 1,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            'سجل الدخول بأستخدام تطبيق توترز و استمتع بمزايا حصريه',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                          Icon(
                            Icons.login,
                            color: Colors.greenAccent,
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          CarouselImages(
                           listImages: [
                            img[0]
                           ],
                            height: 195.0,
                            borderRadius: 15.0,
                            cachedNetworkImage: true,
                            verticalAlignment: Alignment.bottomCenter,
                            onTap: (index) {
                              print('Tapped on page $index');
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          box('images/icons8-wallet-80.png', 'أضف رصيد'),
                          box('images/box.png', 'المندوب'),
                          box('images/icons8-burger-80.png', 'مطاعم'),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.greenAccent,
                                  size: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ///database
                                    Text(
                                text_offer[0],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                    ///database
                                    Text(
                                    mintext[0] ,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                          height: MediaQuery.of(context).size.width,
                    child: ListView.builder( scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context ,int index)
                    { return Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => burger(
                                    Images: imagrest[0],
                                    Num1: time[0],
                                    Point: points,
                                    Burg: type[0],
                                    Num2: tag_rate[0],
                                    text2: description[0],
                                    Min: mint,
                                    text1: name[0],
                                  )));
                            },
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: 350,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(imagrest[0]),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                BorderRadius.circular(15),
                                              ),
                                            ),
                                            Positioned(
                                              top: -5.0,
                                              right: 270.0,
                                              left: 10.0,
                                              child: Container(
                                                  width: 60,
                                                  height: 70,
                                                  child: Icon(
                                                    Icons.favorite_outline_sharp,
                                                    size: 35,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                            Positioned(
                                              top: 160,
                                              left: 20,
                                              child: Container(
                                                  width: 80,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(6),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          spreadRadius: 1,
                                                          blurRadius: 10,
                                                          color: Colors.black12,
                                                          offset: Offset(0, 1)),
                                                    ],
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        time[0],
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        mint,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 8),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 260),
                                      child: Text(
                                        name[0],
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 30),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            type[0],
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.black),
                                          ),
                                          Text(
                                            '\$\$',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 110,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[100],
                                              borderRadius: BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    points,
                                                    style: TextStyle(
                                                        color: Colors.blueAccent,
                                                        fontSize: 10),
                                                  ),
                                                  Icon(
                                                    Icons.plus_one,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 25),
                                          child: Container(
                                            width: 70,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.greenAccent,
                                                ),
                                                Text(tag_rate[0])
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      description[0],
                                      style:
                                      TextStyle(color: Colors.grey, fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => sweet(
                                      Imagessweet : imagrest[1],
                                      textsweet: name[1],
                                      Numsweet: time[1],
                                      Pointsweet: Pointsweet1,
                                      sweett: type[1],
                                      Numsweet2: tag_rate[0],
                                      textsweet2: description[1],
                                      Minsweet:Minsweet1,
                                  ),),);
                            },

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Stack(
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: 350,
                                              height: 200,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(imagrest[1]),
                                                    fit: BoxFit.cover),
                                                borderRadius:
                                                BorderRadius.circular(15),
                                              ),
                                            ),
                                            Positioned(
                                              top: -5.0,
                                              right: 270.0,
                                              left: 10.0,
                                              child: Container(
                                                  width: 60,
                                                  height: 70,
                                                  child: Icon(
                                                    Icons.favorite_outline_sharp,
                                                    size: 35,
                                                    color: Colors.white,
                                                  )),
                                            ),
                                            Positioned(
                                              top: 160,
                                              left: 20,
                                              child: Container(
                                                  width: 80,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(6),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          spreadRadius: 1,
                                                          blurRadius: 10,
                                                          color: Colors.black12,
                                                          offset: Offset(0, 1)),
                                                    ],
                                                    color: Colors.white,
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        Numsweet1,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 10),
                                                      ),
                                                      Text(
                                                        Minsweet1,
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 8),
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                                name[1],
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold),

                                            ),
                                          ],
                                        ),
                                        Row(
                                        mainAxisAlignment: MainAxisAlignment.end,

                                        children: [
                                          Text(
                                            type[1],
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.black),
                                          ),
                                          Text(
                                            '\$\$\$',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 110,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[100],
                                              borderRadius: BorderRadius.circular(8)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    Pointsweet1,
                                                    style: TextStyle(
                                                        color: Colors.blueAccent,
                                                        fontSize: 10),
                                                  ),
                                                  Icon(
                                                    Icons.plus_one,
                                                    color: Colors.blueAccent,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 25),
                                          child: Container(
                                            width: 70,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.greenAccent,
                                                ),
                                                Text(tag_rate[0])
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      description[1],
                                      style:
                                      TextStyle(color: Colors.grey, fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),SizedBox(width: 10,),
                    ],);}),
                    ),
                  ),

                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.greenAccent,
                                  size: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    ///database
                                    Text(
                                      test_offer2[0],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 18),
                                    ),
                                    ///database
                                    Text(
                                      mintext2[0] ,
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: MediaQuery.of(context).size.width,
                              child: ListView.builder( scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (BuildContext context ,int index)
                                  { return Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => burger(
                                                Images: imagrest[0],
                                                Num1: time[0],
                                                Point: points,
                                                Burg: type[0],
                                                Num2: tag_rate[0],
                                                text2: description[0],
                                                Min: mint,
                                                text1: name[0],
                                              )));
                                        },
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Column(
                                                  children: [
                                                    Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          width: 350,
                                                          height: 200,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage(imagrest[0]),
                                                                fit: BoxFit.cover),
                                                            borderRadius:
                                                            BorderRadius.circular(15),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: -5.0,
                                                          right: 270.0,
                                                          left: 10.0,
                                                          child: Container(
                                                              width: 60,
                                                              height: 70,
                                                              child: Icon(
                                                                Icons.favorite_outline_sharp,
                                                                size: 35,
                                                                color: Colors.white,
                                                              )),
                                                        ),
                                                        Positioned(
                                                          top: 160,
                                                          left: 20,
                                                          child: Container(
                                                              width: 80,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                borderRadius:
                                                                BorderRadius.circular(6),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      spreadRadius: 1,
                                                                      blurRadius: 10,
                                                                      color: Colors.black12,
                                                                      offset: Offset(0, 1)),
                                                                ],
                                                                color: Colors.white,
                                                              ),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.center,
                                                                children: [
                                                                  Text(
                                                                    time[0],
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 10),
                                                                  ),
                                                                  Text(
                                                                    mint,
                                                                    style: TextStyle(
                                                                        color: Colors.grey,
                                                                        fontSize: 8),
                                                                  ),
                                                                ],
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width: 60,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left: 260),
                                                  child: Text(
                                                    name[0],
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(right: 30),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        type[0],
                                                        style: TextStyle(
                                                            fontSize: 15, color: Colors.black),
                                                      ),
                                                      Text(
                                                        '\$\$',
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: Colors.grey[600]),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      width: 110,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          color: Colors.blueGrey[100],
                                                          borderRadius: BorderRadius.circular(8)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                points,
                                                                style: TextStyle(
                                                                    color: Colors.blueAccent,
                                                                    fontSize: 10),
                                                              ),
                                                              Icon(
                                                                Icons.plus_one,
                                                                color: Colors.blueAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                          left: 10, right: 25),
                                                      child: Container(
                                                        width: 70,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey[200],
                                                            borderRadius:
                                                            BorderRadius.circular(10)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color: Colors.greenAccent,
                                                            ),
                                                            Text(tag_rate[0])
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 13,
                                                ),
                                                Text(
                                                  description[0],
                                                  style:
                                                  TextStyle(color: Colors.grey, fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 10,),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => sweet(
                                              Imagessweet : imagrest[1],
                                              textsweet: name[1],
                                              Numsweet: time[1],
                                              Pointsweet: Pointsweet1,
                                              sweett: type[1],
                                              Numsweet2: tag_rate[1],
                                              textsweet2: description[1],
                                              Minsweet:Minsweet1,
                                            ),),);
                                        },

                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Stack(
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Container(
                                                          width: 350,
                                                          height: 200,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: NetworkImage(imagrest[1]),
                                                                fit: BoxFit.cover),
                                                            borderRadius:
                                                            BorderRadius.circular(15),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          top: -5.0,
                                                          right: 270.0,
                                                          left: 10.0,
                                                          child: Container(
                                                              width: 60,
                                                              height: 70,
                                                              child: Icon(
                                                                Icons.favorite_outline_sharp,
                                                                size: 35,
                                                                color: Colors.white,
                                                              )),
                                                        ),
                                                        Positioned(
                                                          top: 160,
                                                          left: 20,
                                                          child: Container(
                                                              width: 80,
                                                              height: 50,
                                                              decoration: BoxDecoration(
                                                                borderRadius:
                                                                BorderRadius.circular(6),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      spreadRadius: 1,
                                                                      blurRadius: 10,
                                                                      color: Colors.black12,
                                                                      offset: Offset(0, 1)),
                                                                ],
                                                                color: Colors.white,
                                                              ),
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.center,
                                                                children: [
                                                                  Text(
                                                                    Numsweet1,
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 10),
                                                                  ),
                                                                  Text(
                                                                    Minsweet1,
                                                                    style: TextStyle(
                                                                        color: Colors.grey,
                                                                        fontSize: 8),
                                                                  ),
                                                                ],
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      name[1],
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight: FontWeight.bold),

                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,

                                                  children: [
                                                    Text(
                                                      type[1],
                                                      style: TextStyle(
                                                          fontSize: 15, color: Colors.black),
                                                    ),
                                                    Text(
                                                      '\$\$\$',
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          color: Colors.grey[600]),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      width: 110,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          color: Colors.blueGrey[100],
                                                          borderRadius: BorderRadius.circular(8)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                Pointsweet1,
                                                                style: TextStyle(
                                                                    color: Colors.blueAccent,
                                                                    fontSize: 10),
                                                              ),
                                                              Icon(
                                                                Icons.plus_one,
                                                                color: Colors.blueAccent,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(
                                                          left: 10, right: 25),
                                                      child: Container(
                                                        width: 70,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey[200],
                                                            borderRadius:
                                                            BorderRadius.circular(10)),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.center,
                                                          children: [
                                                            Icon(
                                                              Icons.star,
                                                              color: Colors.greenAccent,
                                                            ),
                                                            Text(tag_rate[0])
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 13,
                                                ),
                                                Text(
                                                  description[1],
                                                  style:
                                                  TextStyle(color: Colors.grey, fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),SizedBox(width: 10,),
                                    ],);}),
                            ),
                          ),
SizedBox(height: 100,)
                        ],
                      ),
                    ],
                  )),
            ),
          ])),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 0),

        child: DotNavigationBar(

          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> profilepage()));
              },
                  child: Icon(Icons.person_outline,color: Colors.grey,)),
              selectedColor: Color(0xff73544C),
            ),
            /// Home
            DotNavigationBarItem(
              icon:GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
              },
                  child: Icon(Icons.list_alt_outlined,color: Colors.grey)),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon:GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> pagee()));
              },
                  child: Icon(Icons.ac_unit_outlined,color: Colors.grey)),
              selectedColor: Colors.grey,
            ),
            DotNavigationBarItem(
              icon:GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> searchpage()));
              },
                  child: Icon(Icons.search,color: Colors.grey,)),
              selectedColor: Colors.grey,
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.greenAccent,),
              selectedColor: Colors.red,
            ),

          ],
        ),
      ),);
  }

  Container box(String pic, String text) {
    return Container(
      width: 120,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                spreadRadius: 1,
                blurRadius: 10,
                color: Colors.black12,
                offset: Offset(0, 1)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            pic,
            width: 80,
            height: 50,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}
enum _SelectedTab { home,search ,explor ,favorite, person }