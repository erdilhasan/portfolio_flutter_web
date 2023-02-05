import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:portfolio_web/about_me.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: () {}, child: Text("Home Page")),
          TextButton(onPressed: () {}, child: Text("Projects"))
        ],
        title: Text('Hasan Erdil Aşkar\'s Portfolio '),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(maxRadius: 50, child: Icon(Icons.person)),
              Text("Hasan Erdil Aşkar"),
              AboutMe()
            ],
          ),
        ),
      ),
    );
  }
}
