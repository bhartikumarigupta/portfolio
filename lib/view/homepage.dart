import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_assests.dart';
import 'package:portfolio/globals/app_color.dart';
import 'package:portfolio/globals/app_text_style.dart';
import 'package:portfolio/view/aboutme.dart';
import 'package:portfolio/view/achivement.dart';
import 'package:portfolio/view/contact_us.dart';
import 'package:portfolio/view/project.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int indx;
  List pages = [Home(), about_me(), project(), contactus()];
  @override
  void initState() {
    indx = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.bgcolor,
      appBar: AppBar(
        toolbarHeight: 80,
        titleSpacing: 11,
        backgroundColor: AppColor.bgcolor,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    indx = 0;
                  });
                },
                child: Text(
                  'Portfolio',
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indx = 0;
                  });
                },
                child: Text(
                  'Home',
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {
                  print("HEllo");
                  setState(() {
                    indx = 1;
                  });
                },
                child: Text(
                  'About',
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indx = 2;
                  });
                  // Navigate to Services
                },
                child: Text(
                  'Projects',
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
              const SizedBox(width: 12),
              // GestureDetector(
              //   onTap: () {
              //     // Navigate to Portfolio
              //     setState(() {
              //       indx = 3;
              //     });
              //   },
              //   child: Text(
              //     'Services',
              //     style: AppTextStyles.headerTextStyle(),
              //   ),
              // ),
              // const SizedBox(width: 11),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indx = 3;
                  });
                  // Navigate to Contact
                },
                child: Text(
                  'Contact',
                  style: AppTextStyles.headerTextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
      body: pages[indx],
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  get https => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: size.height * 0.05,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDown(
                    duration: const Duration(milliseconds: 1200),
                    child: Text(
                      'Hello, It\'s Me ',
                      style: AppTextStyles.monteseraStyle(color: Colors.white),
                    ),
                  ),
                  // Constraints.sizedBox(height: 4),
                  FadeInRight(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      'Bharti  Gupta',
                      style: AppTextStyles.headingStyles(
                          color: Colors.black45, fontSize: 30.sp),
                    ),
                  ),
                  // Constraints.sizedBox(height: 4),
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1400),
                    child: Row(
                      children: [
                        Text(
                          'And I\'m a ',
                          style:
                              AppTextStyles.monteseraStyle(color: Colors.white),
                        ),
                        AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('Flutter Developer',
                                textStyle: AppTextStyles.monteseraStyle(
                                    color: Colors.blue)),
                            TyperAnimatedText('Compettitive Programmer',
                                textStyle: AppTextStyles.monteseraStyle(
                                    color: Colors.blue)),
                          ],
                          totalRepeatCount: 100,
                          pause: const Duration(milliseconds: 1000),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        )
                      ],
                    ),
                  ),
                  // Constraints.sizedBox(height: 1),
                  Wrap(
                    direction:
                        size.width > 900 ? Axis.horizontal : Axis.vertical,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 1600),
                        child: SizedBox(
                          width: size.width <= 360 ? 288 : size.width * 0.7,
                          child: Text(
                            'I build things for the Android, iOS, Web and Desktop.I\'m a passionate learner who\'s always willing to learn and work across technologies and domains. I love to explore new technologies and leverage them to solve real-life problems.',
                            style: AppTextStyles.normalstyle(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeInLeftBig(
                        duration: const Duration(milliseconds: 1800),
                        child: FittedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              Appassests.profile1,
                              fit: BoxFit.fill,
                              height: 120,
                              width: 120,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 3),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1600),
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              launch(
                                  'https://www.facebook.com/profile.php?id=100085709646719');
                            },
                            child:
                                buildsocialbutton(asset: Appassests.facebook)),
                        const SizedBox(width: 15),
                        InkWell(
                            onTap: () {
                              launch(
                                  'https://www.instagram.com/shadhviraj97099/?hl=en');
                            },
                            child: buildsocialbutton(asset: Appassests.insta)),
                        const SizedBox(width: 15),
                        InkWell(
                            onTap: () {
                              launch('https://twitter.com/bhartigupta820');
                            },
                            child:
                                buildsocialbutton(asset: Appassests.twitter)),
                        const SizedBox(width: 15),
                        InkWell(
                            onTap: () {
                              // print("Hello");
                              launch(
                                  'https://www.linkedin.com/in/bharti-kumari-gupta/');
                            },
                            child:
                                buildsocialbutton(asset: Appassests.linkedin)),
                        const SizedBox(width: 15),
                        InkWell(
                            onTap: () {
                              launch('https://github.com/bhartikumarigupta');
                            },
                            child: buildsocialbutton(asset: Appassests.github))
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: MaterialButton(
                        onPressed: () {
                          launch(
                              'https://drive.google.com/drive/u/0/folders/1fjX2PY-t9PEIFX961804j0o5RBvkBUBY');
                        },
                        elevation: 6,
                        focusElevation: 12,
                        color: AppColor.themecolor,
                        splashColor: AppColor.lowgreen,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        hoverColor: AppColor.aqua,
                        height: 30,
                        minWidth: 90,
                        child: Text(
                          'Download CV',
                          style: AppTextStyles.headerTextStyle(),
                        )),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 400,
          ),
          // about_me(),
          // const SizedBox(
          //   height: 400,
          // ),
        ],
      ),
    );
  }

  Future<void> launch(String url) async {
    !await launchUrl(Uri.parse(url));
  }

  CircleAvatar buildsocialbutton({required String asset}) {
    return CircleAvatar(
      maxRadius: 22,
      backgroundColor: AppColor.themecolor,
      child: InkWell(
        splashColor: AppColor.lowgreen,
        hoverColor: AppColor.aqua,
        child: CircleAvatar(
          maxRadius: 20,
          backgroundColor: AppColor.bgcolor,
          child:
              // profile_animation()
              Image.asset(
            asset,
            width: 30,
            height: 40,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
