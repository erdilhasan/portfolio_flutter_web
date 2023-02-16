import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/detailed_project.dart';
import 'data.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("home");
              },
              child: Text("Home Page"))),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        itemCount: detailedProjects.length,
        itemBuilder: (BuildContext context, int index) {
          String keyName = detailedProjects.keys.elementAt(index);
          Map<String, dynamic> projectContent = detailedProjects[keyName]!;
          return DetailedProject(
            title: keyName,
            projectContents: projectContent,
          );
        },
      ),
    );
  }
}
