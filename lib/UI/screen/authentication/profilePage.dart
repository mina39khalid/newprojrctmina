import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:toters_dna/UI/screen/authentication/mainPageToters.dart';
import 'package:toters_dna/UI/screen/authentication/reguestPage.dart';
import 'package:toters_dna/UI/screen/authentication/searchPage.dart';
import 'package:toters_dna/UI/screen/authentication/deliveryPage.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text('Mina khalid',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),)),
      ),
      body: Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 175,right: 0,top: 20,bottom: 20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                            color: Colors.grey.withOpacity(0.23)
                        )
                      ],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.green,size: 20,),
                        ),
                        Column(
                          children: [
                            Text('الفئة الخضراء',style: TextStyle(fontSize: 10),),
                            Text('0 نقطة',style: TextStyle(color: Colors.grey.withOpacity(0.9),fontSize: 9),)
                          ],
                        ),
                        Icon(Iconsax.gift,color: Colors.green,size: 30,)],
                    ),  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.2),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                          color: Colors.grey.withOpacity(0.23)
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        info(Icon(Icons.wordpress_outlined,color: Colors.grey,size: 30),'اللغة'),
                        info(Icon(Icons.wallet_outlined,color: Colors.grey,size: 30),'طرق الدفع'),
                        info(Icon(Icons.headset_mic_outlined,color: Colors.grey,size: 30),'مركز المساعدة'),
                        info(Icon(Icons.person_outline_outlined,color: Colors.grey,size: 30),'الملف الشخصي'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.2),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                          color: Colors.grey.withOpacity(0.23)
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row( mainAxisAlignment: MainAxisAlignment.end,
                            children: [Icon(Icons.info_outline,color: Colors.green,),
                              Text('الرصيد النقدي لدى توترز'),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text('٠د.ع',style: TextStyle(color: Colors.green),),
                            Spacer(),
                            Text('المحفظة',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 10,),
                            Icon(Iconsax.wallet_2,size: 28,color: Colors.grey,),
                          ],
                        ),
                        Divider(color: Colors.grey,height: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('اضافة رصيد',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 2,),
                            Icon(Iconsax.add,size: 30,color: Colors.grey,),
                          ],),
                        Divider(color: Colors.grey,height: 20,),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('تحويل الاموال',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 5,),
                            Icon(Iconsax.arrow_31,size: 28,color: Colors.grey,),

                          ],),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.2),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                          color: Colors.grey.withOpacity(0.23)
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('عروض خاصة'),
                        ),
                        Row(
                          children: [
                            Text('٠د.ع',style: TextStyle(color: Colors.green),),
                            Spacer(),
                            Text('رصيد',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 10,),
                            Icon(Iconsax.discount_shape,size: 28,color: Colors.grey,),
                          ],
                        ),
                        Divider(color: Colors.grey,height: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('اضف رمز العرض',style: TextStyle(fontSize: 12),),
                            SizedBox(width: 2,),
                            Icon(Icons.local_offer_outlined,size: 30,color: Colors.grey,),
                          ],),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.2),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                            color: Colors.grey.withOpacity(0.23)
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Column(  crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Text('تفاصيل الحساب'),

                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('اشعارات',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 10,),
                                Icon(Icons.notifications_none,size: 30,color: Colors.grey,),
                              ],
                            ),
                            Divider(color: Colors.grey,height: 20,),
                            Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('العناوين',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 2,),
                                Icon(Icons.location_on_outlined,size: 30,color: Colors.grey,),
                              ],),
                            Divider(color: Colors.grey,height: 20,),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('اختيارك',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 5,),
                                Icon(Icons.favorite_outline,size: 28,color: Colors.grey,),
                              ],),
                            Divider(color: Colors.grey,height: 20,),
                            Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('التفضيلات',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 2,),
                                Icon(Icons.list_alt_outlined,size: 30,color: Colors.grey,),
                              ],),
                            Divider(color: Colors.grey,height: 20,),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('ادع اصدقاءك',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 5,),
                                Icon(Icons.person_add_alt,size: 28,color: Colors.grey,),

                              ],
                            ),
                          ]
                      ),)),
                SizedBox(height: 20,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.2),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                            color: Colors.grey.withOpacity(0.23)
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Column(  crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:Text('مركز المساعدة'),

                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('اطلب المساعدة',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 10,),
                                Icon(Icons.headset_mic_outlined,size: 30,color: Colors.grey,),
                              ],
                            ),
                            Divider(color: Colors.grey,height: 20,),
                            Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('بطاقة المساعدة',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 2,),
                                Icon(Icons.chat_outlined,size: 30,color: Colors.grey,),
                              ],),
                            Divider(color: Colors.grey,height: 20,),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('قانوني',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 5,),
                                Icon(Icons.difference_outlined,size: 28,color: Colors.grey,),
                              ],),
                            Divider(color: Colors.grey,height: 20,),
                            Row( mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('الاسئلة المتكررة',style: TextStyle(fontSize: 12),),
                                SizedBox(width: 5,),
                                Icon(Icons.question_mark_rounded,size: 30,color: Colors.grey,),
                              ],),
                          ]
                      ),)),
                SizedBox(height: 20,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.2),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                            color: Colors.grey.withOpacity(0.23)
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Column( crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  Column(
                                  children: [
                                    Row( mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text('تسجيل الخروج',style: TextStyle(fontSize: 12,color: Colors.red),),
                                        SizedBox(width: 10,),
                                        Icon(Icons.logout,color: Colors.red,size: 30,)
                                      ],
                                    ),
                                  ]))
                        ],
                      ),
                    )),
                SizedBox(height: 20,),])),
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
              icon: Icon(Icons.person_outline_outlined,color: Colors.greenAccent,),
              selectedColor: Color(0xff73544C),
            ),
            /// Home
            DotNavigationBarItem(
              icon: GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
              },
                  child: Icon(Icons.list_alt_outlined,color: Colors.grey)),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: GestureDetector( onTap: (){
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
              icon: GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> mypage()));
              },
                  child: Icon(Icons.home,color: Colors.grey,)),
              selectedColor: Colors.red,
            ),

          ],
        ),
      ),
    );
  }
  Column info(Icon con,String text){
    return Column( crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            width: 55, height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.withOpacity(0.1),
            ),
            child:con ),
        SizedBox(height: 3,),
        Text(text,style: TextStyle(fontSize: 8),)
      ],
    );
  }
}
enum _SelectedTab { home,search ,explor ,favorite, person }