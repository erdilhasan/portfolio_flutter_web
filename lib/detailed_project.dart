import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailedProject extends StatelessWidget {
  DetailedProject(
      {super.key, required this.title, required this.projectContents});

  final String title;
  final Map<String, dynamic> projectContents;
  String desc = "";

  @override
  Widget build(BuildContext context) {
    desc = projectContents["desc"]!;
    List? images = projectContents["images"];
    print(images);
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title),
          Text(desc),
          images != null
              ? SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Center(
                    child: ListView.separated(
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
                                    "assets/geyik_ss/${images[index]}"),
                              )),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                    ),
                  ),
                )
              : Container(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
