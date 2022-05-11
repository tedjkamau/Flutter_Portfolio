import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/cards/intro_card.dart';

//Create HomePage which will be called to the main dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(//SafeArea is a widget that adds padding to the edges of the screen
      body: SafeArea(
      child:
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      child:
       Padding(
        padding:EdgeInsets.all(15),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,//Use as minimal space on the main axis
                children: [
                  Text(
                    "Welcome Back 👋", 
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.w300
                    ),
                  ),
                  Text(
                    "Ted's Portfolio",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              const Icon(
                Icons.account_circle,
                color: Colors.black,
                size:30
              )
              ],
            )

          ],
        )
      )
      )
      ),
    );
  }
} //A