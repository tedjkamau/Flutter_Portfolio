import 'package:flutter/material.dart';

//Create HomePage which will be called to the main dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Padding(
      //Add equal padding to all sides,
      padding: const EdgeInsets.all(25.0),
      child: Container(
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.15),
                offset: const Offset(0, 15),
                blurRadius: 25,
              )
            ],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Text(
            "Welcome :) My name is Ted",
            textAlign: TextAlign.center, //Text Alignment
            style: TextStyle(
                color: Colors.grey.shade600, //Add color to the text
                fontSize: 20, //Font Size
                fontWeight: FontWeight.bold //Font Weight
                ), //Text style
          )),
    )));
  }
}
