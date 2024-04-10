import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pcm/utils/styles/app_colors.dart';
// import 'package:pcm/utils/styles/assets_strings.dart';

Widget historyCard({

  required String medImg,
  required String medName,
  required String dose,
  required String date1,
  required String date2,
  required Color cardColor,
   TextEditingController? controller,
  Function(String)? onChange,
  TextInputType? keyBoardType,
}) {
  return Material(
    child: Container(
      height: 130,
      padding: EdgeInsets.fromLTRB(5,5, 5, 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // height: inputHeight,
          decoration: BoxDecoration(
          
            border: Border(
              left: BorderSide(
                color: cardColor,
                width: 6.0,
              ),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5.0),
              topRight: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
              bottomLeft: Radius.circular(5.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Image.asset(medImg), // if (medImg != null) Image.asset(medImg),
      
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(medName,
                  style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: AppColors.dark),),
              
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dose,style: TextStyle(fontSize: 15, color: AppColors.dark),),
                  const SizedBox(width: 3,),
                  Text("|",style: TextStyle(fontSize: 16, color: AppColors.dark),),
                  const SizedBox(width: 3,),
    
                  Text(date1,style: TextStyle(fontSize: 15, color: AppColors.dark),),
                  const SizedBox(width: 3,),
    
                  Text("-",style: TextStyle(fontSize: 15, color: AppColors.dark),),
                  const SizedBox(width: 3,),
    
                  Text(date2,style: TextStyle(fontSize: 15, color: AppColors.dark),),
                ],
              ),
              
            ],),
      
           
      
          ],)
        ),
      ),
    ),
  );
}
