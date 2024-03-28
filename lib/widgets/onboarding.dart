import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';

Widget onBoard(
    {required String image,
    required String title,
    required String body,
    required Function() tap,
    required BuildContext context}) {
  return ListView(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
    children: [
      GestureDetector(
          onTap: tap,
          child: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Skip',
                  style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
          )),
      SizedBox(
        height: AppConstant.height(context) * 0.15,
      ),
      Image.asset(image,
          width: AppConstant.width(context) * 0.5,
          height: AppConstant.height(context) * 0.25,
          ),
      SizedBox(
        height: AppConstant.height(context) * 0.03,
      ),
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
          color: AppColors.dark,
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(
        height: AppConstant.height(context) * 0.02,
      ),
      Text(
        body,
        textAlign: TextAlign.center,
        style:TextStyle(
            fontSize: 12,
            color: AppColors.dark,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
            ),
      ),
    ],
  );
}
