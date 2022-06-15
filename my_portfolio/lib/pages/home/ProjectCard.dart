// ignore: file_names
import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.3,
      height: 350,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [BoxShadow(offset:  Offset(5, 15), blurRadius: 15)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                project.name,
                style: const TextStyle(fontSize: 18)),//Project Name
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                padding: const EdgeInsets.all(5),
                child:Text(
                  project.year.toString(),
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),//Project Year
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
              child: ClipRRect(
            child: Image.network(
              project.imageUrl,
              fit: BoxFit.cover,
            ),//Project Image
          )),
          const SizedBox(
            height: 10,
          ),
          Text(
            project.description,
            maxLines: 3,
            style: const TextStyle(
              fontSize: 14, 
              overflow: TextOverflow.ellipsis),
          ),//Project Description
        ],
      ),
    );
  }
}
