// import 'package:animate_do/animate_do.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:portfolio/globals/app_assests.dart';
// import 'package:portfolio/globals/app_text_style.dart';
// import 'package:portfolio/view/project.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:url_launcher/url_launcher.dart';

// class service_page extends StatelessWidget {
//   service_page({super.key});
//   get https => null;
//   static myachivement(lang, String pic, title, description, star, String url) {
//     return Container(
//       height: 800,
//       width: 250,
//       child: Card(
//         // color: AppColor.bgcolor,
//         color: Colors.transparent,
//         margin: EdgeInsets.only(left: 20, right: 20, top: 40),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: FadeInLeft(
//                 child: Text(
//                   lang,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 1,
//             ),
//             Image.asset(
//               pic,
//               fit: BoxFit.fill,
//               height: 10.sp,
//               width: 20.sp,
//             ),
//             SizedBox(
//               height: 10.sp,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 0),
//               child: TextButton(
//                 onPressed: () async {
//                   await launch(url);
//                 },
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 1,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Text(
//                 description,
//                 // style: TextStyle(
//                 //     fontSize: 17,
//                 //     fontWeight: FontWeight.bold,
//                 //     color: Colors.white70),
//               ),
//             ),
//             SizedBox(
//               height: 1,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(0),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.star,
//                     color: Colors.white70,
//                     size: 5,
//                   ),
//                   SizedBox(
//                     width: 5,
//                   ),
//                   Text(
//                     star,
//                     style: TextStyle(
//                       color: Colors.white70,
//                     ),
//                   ),
//                   Expanded(
//                       child: Container(
//                     width: 4,
//                   )),
//                   IconButton(
//                     icon: Icon(FontAwesomeIcons.github, color: Colors.white),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   List achivement = [
//     myachivement('Leetcode', 'github', 'go to my profile', 'Ranked:1600', '6',
//         'https://github.com/bhartikumarigupta/bmi'),
//     myachivement('Codechef', 'github', 'go to my profile', 'Ranked:1600', '7',
//         'https://github.com/bhartikumarigupta/Todolist'),
//     myachivement('Codeforce', 'github', 'go to my profile', 'Ranked:1600', '7',
//         'https://github.com/bhartikumarigupta/code_clause_calculatorinpython'),
//     myachivement('Geeks for Geeks', 'github', 'go to my profile', 'Ranked:1600',
//         '10', 'https://github.com/bhartikumarigupta/NEWS-APP'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 5,
//           // mainAxisSpacing: 20,
//           childAspectRatio: 0.5,
//         ),
//         itemCount: achivement.length,
//         itemBuilder: (BuildContext context, int index) {
//           return achivement[index];
//         },
//       ),
//     );
//   }
// }

// Future<void> launch(String url) async {
//   !await launchUrl(Uri.parse(url));
// }
