import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/project.dart';

import 'about_me.dart';
import 'contact.dart';
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
              IntrinsicWidth(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ContactTile(
                      title: "hasanerdil1260@gmail.com",
                      contactIcon: Icons.mail,
                      url: "mailto:hasanerdil1260@gmail.com",
                    ),
                    ContactTile(
                      title: "hasanaskar",
                      contactIcon: FontAwesomeIcons.linkedin,
                      url: "https://www.linkedin.com/in/hasanaskar/",
                    ),
                    ContactTile(
                      title: "erdilhasan",
                      contactIcon: FontAwesomeIcons.github,
                      url: "https://github.com/erdilhasan",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
