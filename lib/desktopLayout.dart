import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/contact.dart';
import 'package:portfolio_web/project.dart';

import 'about_me.dart';
import 'data.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              maxRadius: 50, backgroundImage: AssetImage("profile.jpg")),
          Text(
            "Hasan Erdil Aşkar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AboutMe(bodyText: intro),
                    SizedBox(height: 10),
                    AboutMe(bodyText: dummy),
                  ],
                ),
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Projects",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: projects.length,
                          itemBuilder: (BuildContext context, int index) {
                            String key = projects.keys.elementAt(index);
                            return Project(title: key, subText: projects[key]!);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: IntrinsicWidth(
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
            ),
          )
        ],
      ),
    );
  }
}
