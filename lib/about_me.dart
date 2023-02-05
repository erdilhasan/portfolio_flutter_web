import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: 700, maxHeight: 300, minHeight: 100, minWidth: 100),
      child: Card(
        child: Text(
            "Current undergraduate computer science student at Hacettepe University with a initiative taker mind and have a strong foundation in math,problem solving and logic. Looking to leverage experience on building front‑end applications."),
      ),
    );
  }
}
