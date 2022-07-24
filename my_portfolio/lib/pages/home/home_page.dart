import 'package:flutter/material.dart';
import 'package:my_portfolio/example/projects.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/Header/header.dart';
import 'package:my_portfolio/widgets/cards/project_card.dart';
import 'package:share_plus/share_plus.dart';

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
              Share.share(
                  "Check out my Github for more https://github.com/c0desh1n0b1");
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
                          Responsive(
                              mobile: mobileTabletBuilder(350),
                              tablet: mobileTabletBuilder(450),
                              desktop: desktopBuilder())
                        ],
                      ),
                    )))));
  }

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
        height: height,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: projects[index]);
          },
        ));
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 5.0, mainAxisSpacing: 5.0),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        return ProjectCard(project: projects[index]);
      },
    );
  }
}
