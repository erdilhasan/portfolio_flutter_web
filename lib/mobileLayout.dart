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
              Text(
                "Hasan Erdil Aşkar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              SizedBox(height: 5),
              AboutMe(bodyText: intro),
              SizedBox(height: 5),
              AboutMe(bodyText: dummy),
              SizedBox(height: 10),
              Text(
                "Projects",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: projects.length,
                itemBuilder: (BuildContext context, int index) {
                  String key = projects.keys.elementAt(index);
                  return Project(title: key, subText: projects[key]!);
                },
              ),
              SizedBox(height: 10),
              IntrinsicWidth(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ContactTile(
                      title: contacts["E-mail"]!,
                      contactIcon: Icons.mail,
                      url: "mailto:${contacts["E-mail"]!}",
                    ),
                    ContactTile(
                      title: contacts["LinkedIn"]!,
                      contactIcon: FontAwesomeIcons.linkedin,
                      url:
                          "https://www.linkedin.com/in/${contacts["LinkedIn"]!}/",
                    ),
                    ContactTile(
                      title: contacts["Github"]!,
                      contactIcon: FontAwesomeIcons.github,
                      url: "https://github.com/${contacts["Github"]!}",
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
