import 'package:flutter/material.dart';

//Create HomePage which will be called to the main dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: 300,
        height: 100,
        //Add equal padding to all sides,
        padding: const EdgeInsets.all(25.0),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              offset: Offset(0, 10),
              blurRadius: 15,
            )
          ],
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: const Text("Welcome :) My name is Ted"),
      )),
    );
  }
}
