import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

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
                child: const Text(
                  "2022",
                  style: TextStyle(fontSize: 14, color: Colors.white),
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
              "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
              fit: BoxFit.cover,
            ),
          )),
          const SizedBox(
            height: 10,
          ),
          const Text(
            """"Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime sint commodi repudiandae consequuntur voluptatum laborum
numquam blanditiis harum"""
            "",
            maxLines: 3,
            style: TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
    );
  }
}
