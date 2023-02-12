import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/data.dart';

class Project extends StatelessWidget {
  final String title;
  final String subText;
  const Project({super.key, required this.title, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.lightBlue.shade100,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subText),
        leading: FaIcon(FontAwesomeIcons.circleDot, color: Colors.black),
        trailing: FaIcon(FontAwesomeIcons.angleRight, color: Colors.black),
        onTap: () {},
      ),
    );
  }
}
