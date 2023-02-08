import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/about_me.dart';
import 'package:portfolio_web/desktopLayout.dart';
import 'package:portfolio_web/mobileLayout.dart';
import 'package:portfolio_web/project.dart';
import 'data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: () {}, child: const Text("Home Page")),
          TextButton(onPressed: () {}, child: const Text("Projects"))
        ],
        title: const Text('Hasan Erdil Aşkar\'s Portfolio '),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 768) {
            return MobileLayout();
          } else {
            return DesktopLayout();
          }
          ;
        },
      ),
    );
  }
}
