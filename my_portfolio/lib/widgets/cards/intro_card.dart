import 'package:flutter/material.dart'; //Import the material package

class IntroCard extends StatelessWidget {
  final String text;
  const IntroCard({required this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
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
        text,
        textAlign: TextAlign.center, //Text Alignment
        style: TextStyle(
            color: Colors.grey.shade600, //Add color to the text
            fontSize: 20, //Font Size
            fontWeight: FontWeight.bold //Font Weight
            ),
      ),
    );
  }
}
