import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/Header/header.dart';
import 'package:my_portfolio/widgets/cards/intro_card.dart';
import 'package:my_portfolio/widgets/cards/project_card.dart';

//Create HomePage which will be called to the main dart
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //SafeArea is a widget that adds padding to the edges of the screen
        body: SafeArea(
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                    padding: EdgeInsets.all(15),
                    child: (SingleChildScrollView(
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
                            height: MediaQuery.of(context).size.height,
                            child: ListView(
                              children: const [
                                ProjectCard(
                                  projectName: "My project",
                                  projectYear: 2022,
                                  projectDescription:
                                      "This is the project description where I will be writing details of the project",
                                  projectImage:
                                      "https://cdn.mos.cms.futurecdn.net/Pb7XnLPRsq8aYHW22EUzx6.jpg",
                                  //The image changed even though in the project card there is a default image
                                ),
                                ProjectCard(
                                  projectName: "My project",
                                  projectYear: 2022,
                                  projectDescription:
                                      "This is the project description where I will be writing details of the project",
                                  projectImage:
                                      "https://cdn.mos.cms.futurecdn.net/Pb7XnLPRsq8aYHW22EUzx6.jpg",
                                  //The image changed even though in the project card there is a default image
                                ),
                                ProjectCard(
                                  projectName: "My project",
                                  projectYear: 2022,
                                  projectDescription:
                                      "This is the project description where I will be writing details of the project",
                                  projectImage:
                                      "https://cdn.mos.cms.futurecdn.net/Pb7XnLPRsq8aYHW22EUzx6.jpg",
                                  //The image changed even though in the project card there is a default image
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ))))));
  }
}
