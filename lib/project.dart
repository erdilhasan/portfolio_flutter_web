import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/data.dart';

class Project extends StatelessWidget {
  final String title;
  final String subText;
  const Project({super.key, required this.title, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue.shade100,
      child: ListTile(
        title: Text(title),
        subtitle: Text(subText),
        leading: Icon(Icons.electric_meter_rounded),
        onTap: () {},
      ),
    );
  }
}
