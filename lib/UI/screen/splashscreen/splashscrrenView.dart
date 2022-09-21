
import 'package:flutter/material.dart';
import 'package:toters_dna/UI/screen/authentication/mainPageToters.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async{
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(
        context , MaterialPageRoute(builder: (context) => mypage()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04b493),
      body:  Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container( width: 300, height: 300,
                child: Image.network('https://c.top4top.io/p_2453vpdc50.jpeg'))
          ],
        ),
      ),
    );
  }
}