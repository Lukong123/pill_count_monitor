import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:pcm/utils/styles/app_colors.dart';
// import 'package:pcm/utils/styles/assets_strings.dart';

Widget colorCard({
  // required InputFieldType fieldType,
  // double inputHeight = 47.0,
  required String medImg,
  required String medName,
  required String dose,
  required String time1,
  Color? badgeColor,
  required String time2,

  required Color cardColor,
   TextEditingController? controller,
  Function(String)? onChange,
  TextInputType? keyBoardType,
}) {
  return Container(
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
          Expanded(child: Image.asset(medImg)), // if (medImg != null) Image.asset(medImg),
          const SizedBox(width: 5,),
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(medName,
                style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 15,
                color: AppColors.dark),),
            
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dose,style: TextStyle(fontSize: 12, color: AppColors.dark),),
                const SizedBox(width: 3,),
                Text("|",style: TextStyle(fontSize: 20, color: AppColors.dark),),
                const SizedBox(width: 3,),

                Text(time1,style: TextStyle(fontSize: 12, color: AppColors.dark),),
                const SizedBox(width: 3,),

                Text("|",style: TextStyle(fontSize: 20, color: AppColors.dark),),
                const SizedBox(width: 3,),

                Text(time2,style: TextStyle(fontSize: 12, color: AppColors.dark),),
              ],
            ),
            Row(
              children: [
                 Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    color: AppColors.successLight,
    
                    ),
    
                    child:Center(
                      child: Text("After Breakfast",
                      style: TextStyle(
                        color: AppColors.successColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                      ),),
                    )
                  ),
                  const SizedBox(width: 15,),
                   Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    color: AppColors.errorLight,
    
                    ),
    
                    child:Center(
                      child: Text("After Lunch",
                      style: TextStyle(
                        color: AppColors.errorColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 12
                      ),),
                    )
                  ),
              ],
            ),
          ],),
    
          const SizedBox(width: 4,),
          Icon(Icons.verified_outlined,
          color: badgeColor ?? AppColors.grey,
          size: 30,),
          const SizedBox(width: 10,),
    
    
        ],)
      ),
    ),
  );
}
