// ignore_for_file: must_be_immutable

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({Key? key, required this.index, required this.tap})
      : super(key: key);
  Function(int) tap;
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: Platform.isAndroid ? 16 : 0,
      ),
      height: AppConstant.height(context) * .075,
      decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.15),
                blurRadius: 30,
                offset: Offset(0, 10))
          ],
          borderRadius: BorderRadius.circular(50.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          height: 60,
          color: AppColors.primaryLight,
          child: Row(
            children: [
              navItem(
                // Icon(Icons.home_filled),
                ImageAssets.homeImg,
                index == 0,
                onTap: () => tap(0),
              ),
              navItem(
                ImageAssets.add,
                index == 1,
                onTap: () => tap(1),
              ),
              navItem(
                ImageAssets.previewImg,
                index == 2,
                onTap: () => tap(2),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

Widget navItem(String icon, bool selected, {Function()? onTap}) {
  return Expanded(
      child: InkWell(
          onTap: onTap,
          child: Image.asset(
            icon,
            height: 20.0,
            width: 20.0,
            color: selected
                ? AppColors.secondaryDark
                : AppColors.plainWhite,
                // : Colors.white.withOpacity(0.4),
          )));
}
