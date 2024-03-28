import 'package:flutter/material.dart';
import 'package:pcm/utils/constants/constants.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pcm/utils/styles/app_colors.dart';
// import 'package:sizer/sizer.dart';


Widget appButton({
  required String text,
   Widget? icon,
  required BuildContext context,
  required Color textColor,
  required Color bgColor,
  required Color bdColor,
  bool? status,
  Function()? tap,
  required bool enable,
}) {
  return GestureDetector(
    onTap: enable ? tap : null,
    // child: status == false //we had child: status==false and then donwn the commented line not something line
       child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              height: AppConstant.height(context) * 0.009,
              decoration: BoxDecoration(
                  color: enable ? bgColor : AppColors.errorLight,
                  border: Border.all(
                    color: enable ? bgColor : AppColors.errorLight,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 1,
                      blurRadius: 18,
                      offset: Offset(-3, 3),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 8),
                  Text(
                    text,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: AppConstant.width(context) * 0.4),
                  // icon,
                  //const SizedBox(width: 10),
                ],
              ),
            ),
          )
          // : Container(child: Text("something"),)
        // : Center(child: SpinKitThreeBounce(color: AppColors.secondaryDark)),
  );
}
