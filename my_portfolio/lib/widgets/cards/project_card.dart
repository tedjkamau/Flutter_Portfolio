import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  //Parameters
  final String projectName;
  final int projectYear;
  final String projectImage;
  final String projectDescription;
  const ProjectCard(
      //Constructors to pass parameters everytime the card is initialised.
      {required this.projectName,
      required this.projectYear,
      this.projectImage =
          "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      //instead of calling pictures, set a default value, this is a default value for practice.
      //This is a hard coded fix where they cannot be altered without modifying the program
      required this.projectDescription,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [BoxShadow(offset: const Offset(5, 15), blurRadius: 15)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("My Project", style: TextStyle(fontSize: 18)),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(5),
                child: Text(
                  projectYear.toString(),
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: ClipRRect(
            child: Image.network(
              projectImage,
              fit: BoxFit.cover,
            ),
          )),
          const SizedBox(
            height: 10,
          ),
          Text(
            projectDescription,
            maxLines: 3,
            style:
                const TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}
