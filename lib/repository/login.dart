import 'package:blinkit/repository/bottomnavscreen.dart';
import 'package:blinkit/repository/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
           UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 15,),
            UiHelper.CustomImage(img: "image 10.png"),
            SizedBox(
              height: 20,
            ),
            Text("India's last minutue app",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
         SizedBox(height: 29,),

            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),


                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Vishant",style: TextStyle(fontSize: 20),),
                    ),
                    Text("xxxxxxxx97",style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20,),
                    SizedBox(height: 40,width: 295,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BtootmNavScreen()));
                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade700,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )

                    ), child: Text("login with   ZOMATO",style: TextStyle(color: Colors.white),)),
                    ),
                    SizedBox(height: 8,),
                    Text("Access your saved addresses from Zomato automatically",style: TextStyle(fontSize: 12.7,color: Colors.grey,),),
                    SizedBox(height: 15,),
                    Text("login with phone number",style: TextStyle(fontSize:18,color: Colors.green),),




                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
