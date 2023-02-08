import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/data.dart';

class AboutMe extends StatelessWidget {
  final String bodyText;

  const AboutMe({super.key, required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(bodyText),
        ),
      ),
    );
  }
}
