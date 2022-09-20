import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class burger extends StatefulWidget {
  final String Images;
  final String text1;
  final String Num1;
  final String Point;
  final String Burg;
  final String Num2;
  final String text2;
  final String Min;





  burger({required this.Images,
    required this.text1,
    required this.Num1,
    required this.Point,
    required this.Burg,
    required this.Num2,
    required this.text2,
    required this.Min,});



  @override
  State<burger> createState() => _burgerState();

}

class _burgerState extends State<burger> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Stack(
                    clipBehavior: Clip.none,
                    children: [ Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: NetworkImage(widget.Images),
                            fit: BoxFit.fitHeight
                        ),
                      ),

                      child:
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pop();
                          },

                          child:  Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 400,top: 10),
                              child: Container( width: 40, height: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child:  Icon(Icons.arrow_forward,color: Colors.black,),),
                            )
                          ],)),),

                      Positioned(
                        left: 20,
                        bottom: -20,
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
                                  widget.Num1,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10),
                                ),
                                Text(
                                  widget.Min,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 8),
                                ),
                              ],
                            )),
                      ),]),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 270),
                      child: Text(
                        widget.text1,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25,top: 2,bottom: 5),
                      child: Text(
                        widget.text2,textAlign: TextAlign.right,
                        style:
                        TextStyle(color: Colors.grey, fontSize: 12),
                      ),
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
                                    widget.Point,
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
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange.withOpacity(0.1),
                                borderRadius:
                                BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [
                                Text('20% خصم',style: TextStyle(color: Colors.red,fontSize: 10),),
                                Icon(
                                  Icons.discount_outlined,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star,color: Colors.grey[300],),
                                  SizedBox(width: 3,),
                                  Icon(Icons.star,color: Colors.greenAccent,),
                                  SizedBox(width: 3,),
                                  Icon(Icons.star,color: Colors.greenAccent,),
                                  SizedBox(width: 3,),
                                  Icon(Icons.star,color: Colors.greenAccent,),
                                  SizedBox(width: 3,),
                                  Icon(Icons.star,color: Colors.greenAccent,),
                                ],
                              ),
                              Text('مرتكز على 4089 التقيمات',style: TextStyle(fontSize: 8,color: Colors.grey),)
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right: 10,left: 10),
                          child: Text("${widget.Num2}",style: TextStyle(fontSize: 30,color: Colors.black),textAlign: TextAlign.right,),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                  child: Container(width: 370,height: 1,color: Colors.grey[400],),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 220,top: 20),
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.greenAccent,size: 15,),
                      SizedBox(width: 3,),
                      Icon(Icons.star,color: Colors.greenAccent,size: 15,),
                      SizedBox(width: 3,),
                      Icon(Icons.star,color: Colors.greenAccent,size: 15,),
                      SizedBox(width: 3,),
                      Icon(Icons.star,color: Colors.greenAccent,size: 15,),
                      SizedBox(width: 3,),
                      Icon(Icons.star,color: Colors.greenAccent,size: 15,),
                      SizedBox(width: 10,),
                      Text('Hasan Sami',style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,color: Colors.black),),
                    ],
                  ),
                ),

                Text('"لفة جبيره و مشبعه والطعم طيب جداً راح تحس اكو اختلاف عن باقي مطاعم البركر "',style: TextStyle(fontSize: 8,color: Colors.grey),),
              ],

            ),
          ],
        ),
      ),

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
              icon: Icon(Icons.person_outline_outlined,color: Colors.grey,),
              selectedColor: Color(0xff73544C),
            ),
            /// Home
            DotNavigationBarItem(

              icon: Icon(Icons.list_alt_outlined,color: Colors.grey,),
              selectedColor: Color(0xff73544C),
            ),



            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.ac_unit,color: Colors.grey,),
              selectedColor: Colors.grey,
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.grey,),
              selectedColor: Colors.grey,
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.greenAccent,),
              selectedColor: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
}
enum _SelectedTab { home,search ,explor ,favorite, person }