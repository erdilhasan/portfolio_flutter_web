import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailedProject extends StatelessWidget {
  DetailedProject(
      {super.key, required this.title, required this.projectContents});

  final String title;
  final Map<String, dynamic> projectContents;
  String desc = "";
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    desc = projectContents["desc"]!;
    List? images = projectContents["images"];
    List? links = projectContents["links"];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            projectContents["logo"] != null
                ? SizedBox(
                    height: 90,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                            "assets/${title.toLowerCase()}/logo.png")))
                : Container(),
            Align(
              child: Text(desc),
              alignment: Alignment.centerLeft,
            ),
            links != null
                ? Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FilledButton(
                              onPressed: () async {
                                if (!await launchUrl(Uri.parse(links[0]))) {
                                  throw Exception('Could not launch ');
                                }
                              },
                              child: Text("Play Store Link")),
                          SizedBox(
                            width: 10,
                          ),
                          FilledButton(
                              onPressed: () async {
                                if (!await launchUrl(Uri.parse(links[1]))) {
                                  throw Exception('Could not launch ');
                                }
                              },
                              child: Text("App Store Link")),
                        ],
                      ),
                      SizedBox(height: 10)
                    ],
                  )
                : Container(),
            images != null
                ? SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: Center(
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                          dragDevices: {
                            PointerDeviceKind.touch,
                            PointerDeviceKind.mouse,
                          },
                        ),
                        child: RawScrollbar(
                          thumbColor: Colors.lightBlue.shade600,
                          radius: Radius.circular(20),
                          thickness: 5,
                          controller: _scrollController,
                          thumbVisibility: true,
                          child: ListView.separated(
                            controller: _scrollController,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: images.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Center(
                                child: SizedBox(
                                    height: 500,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                          "assets/${title.toLowerCase()}/${images[index]}"),
                                    )),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 10,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                : Container(),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
