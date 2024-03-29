import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize:
                MainAxisSize.min, //Use as minimal space on the main axis
            children: const [
              Text(
                "Welcome Back 👋",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              Text(
                "Ted's Portfolio",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Image.asset("assets/img/avatar.png", height: 45)
        ]);
  }
}
