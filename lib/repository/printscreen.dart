import 'package:blinkit/repository/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {

  TextEditingController searchController=TextEditingController();

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
          
          SizedBox(height: 30,),
          
          Text("Print Store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
          Text("Blinkit ensures secure prints at every stage",style: TextStyle(color: Colors.grey),),

          SizedBox(
            height: 40,
          ),

          Stack(
            children:[ Container(
              height: 163,
              width: 361,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade100,

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      Text("Documents",style: TextStyle(fontSize: 22),),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.pending),
                      SizedBox(width: 10,),
                      Text("Price starting at rs 3/page"),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.pending),
                      SizedBox(width: 10,),
                      Text("Paper quality: 70 GSM"),
                    ],
                  ),

                  Row(
                    children: [
                      Icon(Icons.pending),
                      SizedBox(width: 10,),
                      Text("Single side prints"),
                    ],
                  ),

                  Row(
                    children: [
                      SizedBox(width: 20,),
                     SizedBox(height: 40,width: 125,
                    child:   ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: Text("Upload Files"),),
                     ),
                    ],
                  )
                ],
              ),
            ),
              Positioned(child:
              UiHelper.CustomImage(img: "image 62.png"),right: 10,top: 20,)
                ]
          )
        ],
      ),

    );
  }
}
