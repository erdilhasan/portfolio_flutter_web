import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/project.dart';

import 'about_me.dart';
import 'data.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SelectionArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(maxRadius: 50, child: Icon(Icons.person)),
              Text("Hasan Erdil Aşkar"),
              AboutMe(bodyText: intro),
              AboutMe(bodyText: dummy),
              ListView.builder(
                shrinkWrap: true,
                itemCount: projects.length,
                itemBuilder: (BuildContext context, int index) {
                  String key = projects.keys.elementAt(index);
                  return Project(title: key, subText: projects[key]!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
