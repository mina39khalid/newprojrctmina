import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:toters_dna/UI/screen/authentication/mainPageToters.dart';
import 'package:toters_dna/UI/screen/authentication/deliveryPage.dart';
import 'package:toters_dna/UI/screen/authentication/profilePage.dart';
import 'package:toters_dna/UI/screen/authentication/reguestPage.dart';

class searchpage extends StatefulWidget {
  const searchpage({Key? key}) : super(key: key);

  @override
  State<searchpage> createState() => _searchpageState();
}

class _searchpageState extends State<searchpage> {



  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container( width: MediaQuery.of(context).size.width,
                height: 100, color: Colors.white,
              ),
              Positioned(
                top: 45,
                left: 20,
                child: Container(
                  width:  MediaQuery.of(context).size.width-45, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Row( mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('البحث عن متجر او صنف',style: TextStyle(color: Colors.grey.withOpacity(0.8)),),
                        SizedBox(width: 2,),
                        Icon(Icons.search,color: Colors.grey.withOpacity(0.8),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height-200,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width:MediaQuery.of(context).size.width,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xff00b491),
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white,size: 18,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column( crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('!اطلب أي شيء',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),),
                            Text('جديدنا على توترز! اذا يسع على درجه نارية يمكننا\n توصيلله.',style:TextStyle(color: Colors.white,fontSize: 10),)
                          ],
                        ),
                      ),
                      Image.asset('images/img_17.png')
                    ],
                  ),
                ),

                post('خصومات الاسبوعية','احصل على خصم 50% على','مطاعم هذا الاسبوع',12,'images/img_5.png'),
                post('اشياء جديدة','خصم 50% على اول تجربه','اللك من هاي المطاعم',38,'images/img_6.png'),
                post('جرب وفر','احصل على خصم لغاية',' 50% من مطاعم ممجربها',17,'images/img_6.png'),
                post('شنو رأيك بوجبه\n مجانيه؟','استبدل نقاطك هسة','واحصل على وجبه مجانيه',20,'images/img_7.png'),
                post('البعيد صار قريب','مطاعمك المفضله صارت ','!اقرب اليك',52,'images/img_8.png'),
                post('مختارات صحية', 'متاجرك الصحيه المفضلة', 'لنظام غذائي متوازن', 1, 'images/img_9.png'),
                post('دائماً قريب.الى\nالساعه 3 صباحاً','سمعنا جوع الليل ما يرحم', 'فصرنا نوصل كل شي',3, 'images/img_10.png'),
                post('قسم البقالة','يمكنك ان تجد هناكل ما ', 'تحتاجه من البقالة والادوية',4, 'images/img_11.png'),
                post('جديد على توترز','جرب المطاعم الجديدة', 'المميزة مع مجموعة وجبات',19, 'images/img_12.png'),
              ],
            ),
          )],
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
              icon:GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> profilepage()));
              },
                  child: Icon(Icons.person_outline,color: Colors.grey,)),
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
                  child: Icon(Icons.search,color: Colors.greenAccent,)),
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
  Row post( String text1,String text2,String text3, int num,String pic){
    return  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column( crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text1),
            Text(text2,style: TextStyle(fontSize: 10),),
            Text(text3,style: TextStyle(fontSize: 10),),
            Text('$num متاجر ',style: TextStyle(fontSize: 10,color: Colors.green),),

          ],),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(width: 220,height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(pic),
                  fit: BoxFit.cover),
            ),),
        ),

      ],
    );
  }
}
enum _SelectedTab { home,search ,explor ,favorite, person }