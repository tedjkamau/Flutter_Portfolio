import 'package:flutter/material.dart';
import 'package:my_portfolio/example/projects.dart';
import 'package:my_portfolio/widgets/Header/header.dart';
import 'package:my_portfolio/widgets/cards/project_card.dart';

//Create HomePage which will be called to the main dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //SafeArea is a widget that adds padding to the edges of the screen
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.share, color: Colors.white),
            backgroundColor: Colors.black,
            onPressed: (() {
              print("Button Pressed");
            })),
        body: SafeArea(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Header(),
                          const SizedBox(
                            height: 25,
                          ),
                          const Text(
                            "Projects",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 350,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: projects.length,
                              itemBuilder: (context, index) {
                                return ProjectCard(project: projects[index]);
                              },
                            ),
                          )
                        ],
                      ),
                    )))));
  }
}
