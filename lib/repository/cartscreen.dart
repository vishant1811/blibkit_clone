import 'package:blinkit/repository/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartScreen extends StatelessWidget {

  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0xfff7CB45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Blinkit.in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("16 minutes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Mumbai,Vishant G. wadala(E)",style: TextStyle(fontSize: 25),),
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
SizedBox(height: 20,),
          UiHelper.CustomImage(img: "shopping-cart (1) 1.png"),
          SizedBox(height: 20,),
          Text("Reordering will be easy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text("Items you order will show up here so you can buy them again easily"),
          
          SizedBox(height: 30,),
          
          Row(
            children: [
              SizedBox(width: 20,),
              Text("BESTsellers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 20,),

          Row(

            children: [
              Card(
                color: Colors.yellow,
                child: Container(
                    height: 200,
                    width: 150,
                    child: Text("milk")),
              ),
              Card(
                color: Colors.yellow,
                child: Container(
                    height: 200,
                    width: 150,
                    child: Text("milk")),
              ),

            ],
          )












        ],
      ),

    );
  }
}
