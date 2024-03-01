import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/globals/app_button.dart';
import 'package:portfolio/globals/app_color.dart';
import 'package:portfolio/globals/app_text_style.dart';
import 'package:portfolio/view/helper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class contactus extends StatelessWidget {
  contactus({super.key});
// //
//   Future<void> sendMessage(String fullName, String emailAddress,
//       String mobileNumber, String emailSubject, String msg) async {
//     // final smtpServer = gmail('your-email@gmail.com', 'your-password');
//     String username = 'shadhviraj97099@gmail.com';
//     String password = 'oqiyzerymhyrkbgr';
//     final smtpServer = gmail(username, password);

//     final message = Message()
//       ..from = Address(username, 'Mail service')
//       ..recipients.add(emailAddress)
//       ..subject = emailSubject
//       ..text = '''
//     Full Name: $fullName
//     Email Address: $emailAddress
//     Mobile Number: $mobileNumber
//     Email Subject: $emailSubject
//     Message: $msg
//     ''';

//     try {
//       print('sending message');
//       final sendReport =
//           await send(message, smtpServer, timeout: Duration(seconds: 15));
//       print('Message sent: ' + sendReport.toString());
//     } catch (e) {
//       print('Error sending message: $e');
//     }
//   }
  TextEditingController fullName = TextEditingController();

  TextEditingController emailAddress = TextEditingController();
  TextEditingController mobileNumber = TextEditingController();
  TextEditingController emailSubject = TextEditingController();
  TextEditingController msg = TextEditingController();

  sendMessage(String fullName, String emailAddress, String mobileNumber,
      String emailSubject, String msg) async {
    String username = 'shadhviraj97099@gmail.com';
    String password = 'oqiyzerymhyrkbgr';

    final smtpServer = gmail(username, password);
    String text = '''
Name: $fullName, \n
Email Address: $emailAddress \n
Mobile Number: $mobileNumber \n
Message: $msg
''';

    final message = Message()
      ..from = Address(username, 'Bharti Kumari Gupta')
      ..recipients.add(username)
      // ..bccRecipients.add((emailAddress)Address)
      ..subject = emailSubject + ' :: ${DateTime.now()}'
      ..html = "<h1>$emailSubject</h1>\n<p>$text</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.$e');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: HelperClass(
        mobile: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildContactText(),
            SizedBox(height: 40.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                controller: fullName,
                cursorColor: Colors.white,
                style: AppTextStyles.normalstyle(),
                decoration: buildInputDecoration(hintText: 'Full Name'),
              ),
            ),
            SizedBox(height: 12.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                controller: emailAddress,
                cursorColor: Colors.white,
                style: AppTextStyles.normalstyle(),
                decoration: buildInputDecoration(hintText: 'Email Address'),
              ),
            ),
            SizedBox(height: 12.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                controller: mobileNumber,
                cursorColor: Colors.white,
                style: AppTextStyles.normalstyle(),
                decoration: buildInputDecoration(hintText: 'Mobile Number'),
              ),
            ),
            SizedBox(height: 12.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                controller: emailSubject,
                cursorColor: Colors.white,
                style: AppTextStyles.normalstyle(),
                decoration: buildInputDecoration(hintText: 'Email Subject'),
              ),
            ),
            SizedBox(height: 12.0),
            Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.transparent,
              elevation: 8,
              child: TextField(
                controller: msg,
                maxLines: 15,
                cursorColor: Colors.white,
                style: AppTextStyles.normalstyle(),
                decoration: buildInputDecoration(hintText: 'Your Message'),
              ),
            ),
            SizedBox(height: 40.0),
            AppButtons.buildMaterialButton(
                buttonName: 'Send Message',
                onTap: () async {
                  await sendMessage(fullName.text, emailAddress.text,
                      mobileNumber.text, emailSubject.text, msg.text);
                  // await sendMessage();
                }),
            SizedBox(height: 30.0),
          ],
        ),
        tablet: buildForm(),
        desktop: buildForm(),
        paddingWidth: size.width * 0.2,
        bgColor: AppColor.bgcolor,
      ),
    );
  }

  Column buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildContactText(),
        SizedBox(height: 25.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyles.normalstyle(),
                  decoration: buildInputDecoration(hintText: 'Full Name'),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyles.normalstyle(),
                  decoration: buildInputDecoration(hintText: 'Email Address'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyles.normalstyle(),
                  decoration: buildInputDecoration(hintText: 'Mobile Number'),
                ),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
                elevation: 8,
                child: TextField(
                  cursorColor: Colors.white,
                  style: AppTextStyles.normalstyle(),
                  decoration: buildInputDecoration(hintText: 'Subject'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          elevation: 8,
          child: TextField(
            maxLines: 5,
            cursorColor: AppColor.bgcolor2,
            style: AppTextStyles.normalstyle(),
            decoration: buildInputDecoration(hintText: 'Your Message'),
          ),
        ),
        SizedBox(height: 40.0),
        AppButtons.buildMaterialButton(
            buttonName: 'Send Message', onTap: () {}),
        SizedBox(height: 30.0),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Contact',
          style:
              AppTextStyles.headingStyles(color: Colors.white, fontSize: 30.sp),
          children: [
            TextSpan(
              text: ' Me',
              style: AppTextStyles.headingStyles(
                  color: Colors.blue, fontSize: 30.sp),
            )
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({required String hintText}) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.comfortaaStyle(),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: Color.fromARGB(255, 73, 9, 9).withOpacity(0.3),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 24, vertical: 16));
  }
}

void showsnakbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    duration: const Duration(seconds: 10),
  ));
}
