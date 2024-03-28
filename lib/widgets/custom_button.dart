import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:pcm/utils/styles/app_colors.dart';
// import 'package:pcm/utils/styles/assets_strings.dart';
// import 'package:sizer/sizer.dart';


Widget customButton({
  required String text,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12.0),
    decoration: BoxDecoration(
        color: AppColors.secondaryDark,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 18,
            offset: Offset(-3, 3),
          )
        ]),
    child: Row(children: [
      Text(
        text,
        style: TextStyle(
          color: AppColors.plainWhite,
          fontSize: 17,
          decoration: TextDecoration.none,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      // SvgPicture.asset(ImageAssets.arrow)
    ]),
  );
}
