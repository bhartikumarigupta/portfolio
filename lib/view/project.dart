import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/globals/app_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class project extends StatelessWidget {
  const project({super.key});
  get https => null;
  myproject(lang, title, description, star, String url) {
    return Card(
      // color: AppColor.bgcolor,
      color: Colors.transparent,
      margin: EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: FadeInLeft(
              child: Text(lang,
                  style: AppTextStyles.headingStyles(
                    color: Colors.black87, fontSize: 20,
                    // fontSize: 20,
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextButton(
              onPressed: () async {
                await launch(url);
              },
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              description,
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70),
              //  style: AppTextStyles.normalstyle2()
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white70,
                  size: 10,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  star,
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                Expanded(
                    child: Container(
                  width: 4,
                )),
                IconButton(
                  icon: Icon(FontAwesomeIcons.github, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myproject(
                  'BMI APP',
                  'Click 2 code',
                  'Created a body mass index using flutter,Flutter is an open-source UI software development kit created by Google which is  used to develop applications for Android, iOS, Linux, Mac, Windows from a single codebase.',
                  '6',
                  'https://github.com/bhartikumarigupta/bmi'),
              myproject(
                  'Todo List',
                  'Click 2 code',
                  'Created a responsive and visually apppealing To-Do List application using html,css and javascript,CSS is used for styling ,ensuring a clean and intuitive design while javascript is used to facilate interactivity and seamless task management .',
                  '7',
                  'https://github.com/bhartikumarigupta/Todolist'),
              myproject(
                  'Calculator',
                  'Click 2 code',
                  'To design this calculator i used Tkinter in Python ,there are three function show() ,clear(),calculate() which is used to update input,clear input field,evaluates the expressions and display result respectively .',
                  '7',
                  'https://github.com/bhartikumarigupta/code_clause_calculatorinpython'),
              myproject(
                  'News paper App',
                  'click 2 code',
                  'Developed Flutter based news application using Dart and intergrated it with modern news Api. Implemented category-based news aggregation, user authentication, and offline support for enhanced user experience. Ensured high performance, reliability, and security through rigorous testing, documentation, and deployment processes.',
                  '10',
                  'https://github.com/bhartikumarigupta/NEWS-APP'),
              myproject(
                  'Clock ',
                  'Click 2 code',
                  'Created a clock using html,css and javascript',
                  '5',
                  'https://github.com/bhartikumarigupta/clock')
            ],
          )),
    );
  }
}

Future<void> launch(String url) async {
  !await launchUrl(Uri.parse(url));
}
