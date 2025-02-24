import 'package:blinkit/repository/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatograyScreen extends StatelessWidget {

  TextEditingController searchController = TextEditingController();

  var grocerykitchen = [
    {
      "img": "image 41.png",
      "text": "Vegetables & \nFruits"
    },
    {
      "img": "image 42.png",
      "text": "Atta, Dal & \n Rice"
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee & \n Masala"
    },
    {
      "img": "image 44 (1).png",
      "text": "Vegetables & \nFruits"
    },
    {
      "img": "image 45.png",
      "text": "Vegetables & \nFruits"
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee & \n Masala"
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee & \n Masala"
    },
  ];

  var snaksandDrinks = [
    {
      "img": "image 32.png",
      "text": "Chips & \n Namkeens",
    },
    {
      "img": "image 33.png",
      "text": "Chips & \n Namkeens",
    },
    {
      "img": "image 34.png",
      "text": "Chips & \n Namkeens",
    },
    {
      "img": "image 35.png",
      "text": "Chips & \n Namkeens",
    },
    {
      "img": "image 33.png",
      "text": "Chips & \n Namkeens",
    },
    {
      "img": "image 33.png",
      "text": "Chips & \n Namkeens",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: [
                  SizedBox(height: 40,),
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
                            Text("Blinkit.in", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("16 minutes", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Text("Mumbai, Vishant G. wadala(E)", style: TextStyle(fontSize: 25),),
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
                      radius: 15,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.account_circle, color: Colors.black, size: 20,),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 25,
                    child: UiHelper.CustomTextField(controller: searchController,),
                  ),
                ]
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Grocery & Kitchen", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Container(
                    height: 150, // Set a fixed height for the ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: grocerykitchen.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 78,
                          width: 73,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD9EBEB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomImage(img: grocerykitchen[index]["img"].toString()),
                              SizedBox(height: 5,),
                              Text(
                                grocerykitchen[index]["text"].toString(),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 150, // Set a fixed height for the ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: grocerykitchen.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 78,
                          width: 73,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffD9EBEB),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UiHelper.CustomImage(img: grocerykitchen[index]["img"].toString()),
                              SizedBox(height: 5,),
                              Text(
                                grocerykitchen[index]["text"].toString(),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Snacks & Drinks", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 150, // Set a fixed height for the ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snaksandDrinks.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffD9EBEB),
                            ),
                            child: UiHelper.CustomImage(img: snaksandDrinks[index]["img"].toString()),
                          ),
                        ),
                        Text("${snaksandDrinks[index]["text"].toString()}"),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text("Household Essentials", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 150, // Set a fixed height for the ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snaksandDrinks.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 78,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffD9EBEB),
                            ),
                            child: UiHelper.CustomImage(img: snaksandDrinks[index]["img"].toString()),
                          ),
                        ),
                        Text("${snaksandDrinks[index]["text"].toString()}"),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
