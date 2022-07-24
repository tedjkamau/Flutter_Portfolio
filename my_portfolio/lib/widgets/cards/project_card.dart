import 'package:flutter/material.dart';
import 'package:my_portfolio/models/project.dart';
import 'package:my_portfolio/project/project_detail.dart';

class ProjectCard extends StatelessWidget {
  //class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (_) => ProjectDetail(project: project))),
        child: Container(
          width: 300,
          margin: const EdgeInsets.only(top: 15.0, right: 25.0, bottom: 25.0),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(offset: Offset(5, 15), blurRadius: 15)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(project.name, style: const TextStyle(fontSize: 18)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      project.year.toString(),
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Flexible(
                  child: Hero(
                      tag: project.name,
                      child: ClipRRect(
                        child: Image.network(
                          project.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ))),
              const SizedBox(
                height: 15,
              ),
              Text(
                project.description,
                maxLines: 3,
                style: const TextStyle(
                    fontSize: 14, overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ));
  }
}
