import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

var imgo=[""];
var nameo=[""];
var costo=[""];

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  bool checed = false;
  bool checed2 = false;
  int count = 1;
  int counts = 2000 ;
  Future getData() async{
    var url=Uri.parse("http://localhost:4000/order");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);

    imgo.clear();
    nameo.clear();
    costo.clear();

    for (int i=0; i<list1.length; i++){
      setState(() {

        nameo.add("${list1[i]["nameo"]}");
        costo.add("${list1[i]["costo"]}");
        imgo.add("${list1[i]["imgo"]}");

      });
      print(list1);
    }
  }
  void initState(){
    super.initState();
    getData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },

            child:
            Icon(Icons.cancel_outlined,color: Colors.black,),)

        ],
        leading: Row( mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
          children: [
          Icon(Icons.favorite_outline,color: Colors.black,),
          Icon(Icons.share,color: Colors.black,),
        ],)
      ),
      body:
      ListView(
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width-100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image:  NetworkImage(imgo[0])
                    )
                ),),
              Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text(nameo[0],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text('د.ع',style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                          Text(costo[0],style: TextStyle(fontSize: 15,color: Colors.greenAccent),),
                        ],
                      ),
                      SizedBox(height: 8,) ],
                  ),
                ],
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                height: 2,
                width: MediaQuery.of(context).size.width,
              ),
              Container(height: 10, color: Colors.grey.withOpacity(0.5),width: MediaQuery.of(context).size.width,),
                SizedBox(height: 10,),
              Text('اختيار الحجم',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

              CheckboxListTile(

                  title: Text('صغير'),
                  activeColor: Colors.greenAccent,
                  value: this.checed,
                  onChanged: (val){
                    setState(() {
                      this.checed = val!;
                    });
                  }),
              CheckboxListTile(
                  title: Text('دبل+د.ع1000'),
                  activeColor: Colors.greenAccent,
                  value: this.checed2, onChanged: (val){
                    setState(() {
                      this.checed2 = val!;
                    });
                  }),
              Container(height: 10, color: Colors.grey.withOpacity(0.5),width: MediaQuery.of(context).size.width,),
              SizedBox(height: 10,),
               Row( mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text('اي تعليمات خاصة؟',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 ],
               ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,color: Colors.grey.withOpacity(0.3)),
                  ),
                 hintText: 'اكتبها هنا',
                hintStyle: TextStyle(
                fontSize: 20,
                  color: Colors.grey,
                ),
                hintTextDirection: TextDirection.rtl,
            ),
          ),
             ),
    SizedBox(
    height: 10,
    ),
    Container(height: 1, color: Colors.grey,width: MediaQuery.of(context).size.width,),
    Padding(
    padding: const EdgeInsets.only(left: 50),
    child: Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceEvenly,
    children: [
    Container(
    width: 40,
    height: 40,
    child: Row(
    mainAxisAlignment:
    MainAxisAlignment.center,
    children: [
    IconButton(
    onPressed: () {
    setState(() {
    if ( count<1){
    count= 0;
    }
    else{
          count= 0;
          counts = 0;
    }
    });
    },
    icon:
    Icon(Icons.minimize_outlined,color: Colors.greenAccent,)),
    ],
    ),
    ),
    Container(
    width: 100,
    height: 40,
    child: Row(
    mainAxisAlignment:
    MainAxisAlignment.center,
    children: [
    Text('$count',style:
    TextStyle(fontWeight: FontWeight.bold),),
    ],
    ),
    ),
    Container(
    width: 40,
    height: 40,
    child: Row(
    mainAxisAlignment:
    MainAxisAlignment.center,
    children: [
    IconButton(
    onPressed: () {
    setState(() {
    if ( count>=1){
    count = count +1;
    counts = counts+2000;
    }
    else{
    count = count +1;
    counts = counts+2000;
    }
    });
    },
    icon: Icon(Icons.add,color: Colors.greenAccent,)),
    ],
    ),
    )
    ],
    ),
    ),
              Container(height: 1, color: Colors.grey,width: MediaQuery.of(context).size.width,),
    SizedBox(
    height: 20,
    ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Row(
                          children: [
                            Text(
                              'ع.د',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 18),
                            ),


                            Text(
                              ' $counts',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      Text(
                      'اضافه الى السلة',
                      style: TextStyle(color: Colors.white,
                          fontSize: 20),
                    ),
                      Text(
                        '$count سلع ',
                        style: TextStyle(color: Colors.white,
                            fontSize: 20),
                      ),
                    ]),
              ),
  SizedBox(height: 20,)  ],
    ),
        ],
      ),

    );
  }
}
