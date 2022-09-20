import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:toters_dna/UI/screen/authentication/mainPageToters.dart';
import 'package:toters_dna/UI/screen/authentication/profilePage.dart';
import 'package:toters_dna/UI/screen/authentication/searchPage.dart';
import 'package:toters_dna/UI/screen/authentication/deliveryPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff00b491),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text: "طلبات سابقة",
                //  icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                text: "الطلبات القادمة",
                // icon: Icon(Icons.beach_access_sharp),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body:
        TabBarView(
          children: [
            Image.asset('images/img_16.png'),
            Image.asset('images/img_15.png'),

          ],
        ),
        bottomNavigationBar: DotNavigationBar(

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

            DotNavigationBarItem(
              icon:GestureDetector( onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
              },
                  child: Icon(Icons.list_alt_outlined,color: Colors.greenAccent)),
              selectedColor: Color(0xff73544C),
            ),

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

}
enum _SelectedTab { home,search ,explor ,favorite, person }