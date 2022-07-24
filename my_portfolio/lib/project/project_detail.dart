import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            bottom: false,
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          BackButton(
                            onPressed: () => Navigator.pop(context),
                          ),
                          Text(
                            project.name,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              project.year.toString(),
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Hero(
                          tag: project.name,
                          child: Responsive(
                            mobile: Image.network(
                              project.imageUrl,
                              fit: BoxFit.cover,
                            ),
                            tablet: Image.network(
                              project.imageUrl,
                              fit: BoxFit.cover,
                            ),
                            desktop: SizedBox(
                              height: 350,
                              child: Image.network(
                                project.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                      const Text(
                        "Technologies",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      HorizontalTechView(
                          techlist: project.technologiesUsed ?? []),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        project.description,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            )));
  }
}

class HorizontalTechView extends StatelessWidget {
  final List<String> techlist;
  const HorizontalTechView({Key? key, required this.techlist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: techlist.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white),
            child: Text(
              techlist[index],
              style: const TextStyle(color: Colors.black),
            ),
          );
        },
      ),
    );
  }
}
