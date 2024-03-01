import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/globals/app_assests.dart';
import 'package:portfolio/globals/app_text_style.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class about_me extends StatelessWidget {
  const about_me({super.key});
  // print(size.width);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // print(size.width>);

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 50.sp),
        height: size.height,
        width: size.width,
        padding: EdgeInsets.only(left: 20.sp, top: 10.sp),
        child: Wrap(
          direction: size.width > 900 ? Axis.horizontal : Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: FadeInRight(
                        duration: const Duration(milliseconds: 1400),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'About',
                            style: AppTextStyles.headingStyles(
                                color: Colors.white, fontSize: 30.sp),
                            children: [
                              TextSpan(
                                text: ' Me',
                                style: AppTextStyles.headingStyles(
                                    color: Colors.blue, fontSize: 30.sp),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.sp),
                    FittedBox(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          Appassests.profile2,
                          fit: BoxFit.fill,
                          height: 50.sp,
                          width: 50.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Text('Flutter Developer !',
                        style: AppTextStyles.monteseraStyle2()),
                    SizedBox(
                      height: 10.sp,
                    ),
                    SizedBox(
                      width: size.width > 900 ? 112.sp : 75.sp,
                      child: Text(
                          'I am  a passionate Flutter Developer in building beautiful and functional applications for Android, iOS, and the web.I specialize in using Google`s Flutter framework and Dart programming language to create high-quality, responsive applications. I have a strong understanding of object-oriented programming, data structures, and algorithms, which allows me to write efficient and maintainable code. I believe in writing clean, well-documented code and following best practices to ensure the maintainability and scalability of my projects.Feel free to browse through my portfolio to see the work I`ve done, and don`t hesitate to contact me if you`re interested in working together. I`m always open to new opportunities and challenges',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.normalstyle2()),
                    )
                  ],
                ),
                SizedBox(
                  width: 30.sp,
                ),

                // FittedBox(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(100),
                //     child: Image.asset(
                //       Appassests.profile1,
                //       fit: BoxFit.fill,
                //       height: 50.sp,
                //       width: 50.sp,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   width: 30.sp,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
