import 'package:blinkit/repository/cartscreen.dart';
import 'package:blinkit/repository/catogary.dart';
import 'package:blinkit/repository/homescreen.dart';
import 'package:blinkit/repository/printscreen.dart';
import 'package:flutter/material.dart';
class BtootmNavScreen extends StatefulWidget {
  const BtootmNavScreen({super.key});

  @override
  State<BtootmNavScreen> createState() => _BtootmNavScreenState();
}

class _BtootmNavScreenState extends State<BtootmNavScreen> {
  int currentIndex=0;
  List<Widget> pages=[
    HomeScreen(),
    CartScreen(),
    CatograyScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.category,color: Colors.black,),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.print,color: Colors.black,),label: "print"),
        ],type: BottomNavigationBarType.fixed,currentIndex: currentIndex,onTap: (index){setState(() {
          currentIndex=index;
        });},
      ),
    );
  }
}
