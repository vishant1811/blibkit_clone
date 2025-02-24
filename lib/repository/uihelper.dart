import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{
  static CustomImage({required String img}){
    return Image.asset("assets/images/$img");
  }

  static CustomTextField ({required TextEditingController controller}){
    return Container(
      height: 37,
      width: 346,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.yellow
        )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search icecream",
              prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.mic)
        ),
      ),
    );
  }
}