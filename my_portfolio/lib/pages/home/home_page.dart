import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/cards/intro_card.dart';

//Create HomePage which will be called to the main dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: IntroCard(
        text: "High",
      ),
    ));
  }
} //A