import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/project.dart';

import 'about_me.dart';
import 'data.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Center(
        child: SelectionArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(maxRadius: 50, child: Icon(Icons.person)),
              Text(
                "Hasan Erdil Aşkar",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AboutMe(bodyText: intro),
                        AboutMe(bodyText: dummy),
                      ],
                    ),
                  ),
                  Column(
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
                ],
              ),
              Text("dsdd")
            ],
          ),
        ),
      ),
    );
  }
}
