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
    return ListView(
      primary: true,
      shrinkWrap: true,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
                maxRadius: 50,
                backgroundImage: AssetImage("assets/profile.jpg")),
          ],
        ),
        Center(
          child: const Text(
            "Hasan Erdil Aşkar",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        const SizedBox(height: 5),
        const AboutMe(bodyText: intro),
        const SizedBox(height: 5),
        const AboutMe(bodyText: dummy),
        const SizedBox(height: 10),
        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Projects",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
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
        const SizedBox(height: 10),
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
                  url: "https://www.linkedin.com/in/${contacts["LinkedIn"]!}/",
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
    );
  }
}
