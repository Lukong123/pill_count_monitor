import 'package:flutter/material.dart';
import 'package:pcm/utils/styles/app_colors.dart';


Widget inputField(
    {required TextEditingController controller,
    required TextInputType keyboardType,
    required bool obscureText,
    dynamic validator,
    Function(String)? onChanged,
    String? hintText}) {
  return Container(
    height: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: AppColors.grey
      )
    ),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      obscureText: obscureText,
      onChanged: onChanged,
      cursorColor: AppColors.secondaryDark,
      // autofocus: true,
      style: TextStyle(
        fontSize: 12,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 5.0),
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 12.0),
        filled: false,
        enabled: true,
        border: InputBorder.none,
        fillColor: AppColors.plainWhite,
        focusColor: AppColors.secondaryDark,
        hoverColor: AppColors.secondaryDark,
      ),
    ),
  );
}
