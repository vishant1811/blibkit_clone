import 'package:blinkit/repository/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {

  TextEditingController searchController=TextEditingController();
  var data=[
    {
      "img":"image 50.png",
      "text":"Lights, Diyas \n & Candles"
    },
    {
      "img":"image 52.png",
      "text":"Diwali \n  Gifts"
    },
    {
      "img":"image 53.png",
      "text":"Home & \n Living"
    },
    {
      "img":"image 52.png",
      "text":"Home & \n  Living"
    }
  ];

  var category=[
    {
      "img":"image 54.png",
      "text":"Wooden Lid Candle ",
      "price":"99",

    },
    {
      "img":"image 57.png",
      "text" : "Royal Gulab \n Jamun ",
      "price":"100",
    },
    {
      "img":"image 63.png",
      "text":"Bikaji \n  Bhujia",
      "price":"79"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.red.shade500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("Blinkit.in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("16 minutes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20,),
                          Text("Mumbai,Vishant G. wadala(E)",style: TextStyle(fontSize: 25,color: Colors.white),),
                        ],
                      ),
                      SizedBox(height: 20,),

                    ],
                  ),
                ),

                Positioned(
                  right: 20,
                  bottom: 70,
                  child: CircleAvatar(
                    radius: 15 ,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.account_circle,color: Colors.black,size: 20,),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 25,
                  child:
                  UiHelper.CustomTextField(controller: searchController,),)
              ]
          ),
          Divider(color: Colors.white,thickness: 0.5,),
          Container(
            height: 196,
            width: double.infinity,
            color: Colors.red.shade500,
            child: Column(
              children: [
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    Text("Mega Diwali Sale",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                  ],
                ),


                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context,index){
                   return   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10,bottom: 7),
                     child: Container(
                       height: 108,
                       width: 86,
                       decoration: BoxDecoration(
                         color: Color(0xffEAD3D3),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       child: Column(
                         children: [
                           Text(data[index]["text"].toString()),
                           UiHelper.CustomImage(img: data[index]["img"].toString()),

                         ],
                       ),
                     ),
                   );
                                }),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (context,index){
                return Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height:190,
                        width:120,
                        child: Column(


                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              height: 108,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: UiHelper.CustomImage(img: category[index]["img"].toString()),
                            ),
                            SizedBox(height: 10,),
                            Text("${category[index]["text"].toString()}"),

                            Text(" ${category[index]["price"].toString()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ],
                        ),
                      ),
                    ),

                  ],
                );
              }),
            ),
          ),

          SizedBox(height: 20,),




        ],
      )

    );
  }
}
