const String intro =
    "Current undergraduate computer science student at Hacettepe University with a initiative taker mind and have a strong foundation in math,problem solving and logic. Looking to leverage experience on building front‑end applications.";

const String dummy = ''' 
About Me:

2nd year Computer Science undergraduate student stuying at  Hacettepe University in  Ankara, Turkey

Looking to develop mobile applications.

Past experience with Python, Java, C#(Unity Game Engine) and Flutter Framework. 
''';

Map<String, String> projects = {
  "Geyik": "A Social App For Use in University Campus",
  "Mobile 2D Game": "2D Mobile Platformer Game",
  "Gezdir": "Tourism App to find local guides to help explore",
};

Map<String, Map<String, dynamic>> detailedProjects = {
  "Geyik": {
    "desc": '''
• Developed collaboratively in group of two people under ACM Hacettepe student club.
• Features food list, campus map, events and news,GPA calculator.
• Firebase used for the backend part; database and authentication.
• Average of 400 active users daily.
''',
    "images": ["(1).png", "(2).png", "(3).png", "(4).png", "(5).png"],
    "logo": "logo.png",
    "links": [
      "https://play.google.com/store/apps/details?id=com.acm.geyik_app",
      "https://apps.apple.com/tr/app/geyik-for-students/id6444013289"
    ]
  },
  "Mobile 2D Game": {
    "logo": "logo.png",
    "desc": '''
• Developed using Unity Game Engine and written in C#.
• Used assets with public domain licence
''',
    "images": ["(2).png"],
  },
  "Gezdir (W.I.P)": {
    "desc": '''
• In pre evaluation report, the team became 6th in rankings.
• Project is a mobile app in tourism sector used for finding touris guides.
• Currently being developed using Flutter Framework and Firebase for backend parts
''',
  }
};

Map<String, String> contacts = {
  "E-mail": "hasanerdil1260@gmail.com",
  "LinkedIn": "hasanaskar",
  "Github": "erdilhasan",
};
