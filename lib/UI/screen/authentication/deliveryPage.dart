import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:toters_dna/UI/screen/authentication/reguestPage.dart';
import 'package:toters_dna/UI/screen/authentication/searchPage.dart';
import 'package:toters_dna/UI/screen/authentication/mainPageToters.dart';
class pagee extends StatefulWidget {
  const pagee({Key? key}) : super(key: key);

  @override
  State<pagee> createState() => _pageeState();
}

class _pageeState extends State<pagee> {
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
          Container(height: 150,
            width: MediaQuery.of(context).size.width,
            color: Color(0xff00b491),
            child: Padding(
              padding: const EdgeInsets.only(left: 50,top: 70),
              child: Text('!نوصل أي شىء يسع على متن دراجة نارية',style: TextStyle(fontSize: 15.5,color: Colors.white),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40,left: 15,right: 15),
            child: Column( crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(':اطلب مندوب ل'),
                SizedBox(height: 15,),
                Container(
                  width:MediaQuery.of(context).size.width ,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xfff6f6f8),
                      border: Border.all(color: Colors.grey.withOpacity(0.2),width: 1)
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,color: Colors.green,size: 20,),
                      Image.asset('images/img_13.png'),
                      Column( crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('توصيل احتياجاتك',style: TextStyle(color: Colors.green),),
                          Text('مثلاً نسيت مفتاحك بالبيت.وتريد',style: TextStyle(fontSize: 10),),
                          Text('احد يوصله للك للمكتب',style: TextStyle(fontSize: 10),),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  width:MediaQuery.of(context).size.width ,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xfff6f6f8),
                      border: Border.all(color: Colors.grey.withOpacity(0.2),width: 1)
                  ),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined,color: Colors.green,size: 20,),
                      Image.asset('images/img_14.png'),
                      Column( crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('شراء احتياجاتك',style: TextStyle(color: Colors.green),),
                          Text('ما لقيت اللي تريده بتطبيقنا؟',style: TextStyle(fontSize: 9),),
                          Text('مندوب توترز بقدر يشتري لك الي',style: TextStyle(fontSize: 9),),
                          Text('تحتاجه من اي مكان تختاره',style: TextStyle(fontSize: 9),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
              icon: GestureDetector( onTap: (){
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
                  child: Icon(Icons.ac_unit_outlined,color: Colors.greenAccent,)),
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
      ),  );
  }
}
enum _SelectedTab { home,search ,explor ,favorite, person }