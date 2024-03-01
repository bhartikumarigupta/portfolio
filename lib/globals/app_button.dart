// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_color.dart';
import 'package:portfolio/globals/app_text_style.dart';

class AppButtons {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColor.themecolor,
      splashColor: AppColor.lowgreen,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      hoverColor: AppColor.aqua,
      elevation: 7,
      height: 46,
      minWidth: 130,
      focusElevation: 12,
      child: Text(
        buttonName,
        style: AppTextStyles.monteseraStyle2(),
      ),
    );
  }
}
