import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTile extends StatelessWidget {
  const ContactTile(
      {super.key,
      required this.title,
      required this.contactIcon,
      required this.url});
  final String title;
  final String url;
  final IconData contactIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      dense: true,
      leading: FaIcon(contactIcon, color: Colors.white),
      title: Text(title),
      onTap: () async {
        if (!await launchUrl(Uri.parse(url))) {
          throw Exception('Could not launch $url');
        }
      },
    );
  }
}
