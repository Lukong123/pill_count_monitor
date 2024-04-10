import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm/screens/dashboard/add_pill.dart';
import 'package:pcm/screens/dashboard/dashboard_main.dart';
import 'package:pcm/screens/dashboard/pill_history.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';

class DrugDetails extends StatefulWidget {
  const DrugDetails({super.key});

  @override
  State<DrugDetails> createState() => _DrugDetailsState();
}

class _DrugDetailsState extends State<DrugDetails> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Drug Details',
                style: TextStyle(
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),
              ),
            ),
          ),
        ],
      ),
       SizedBox(
                height: AppConstant.height(context) * 0.02,
              ),

      Align(
        alignment: Alignment.center,
        child: Container(
          width: AppConstant.width(context) * 0.90,
          height: AppConstant.height(context) * 0.30,
          decoration: BoxDecoration(
            color: AppColors.secondaryLight,
            borderRadius: BorderRadius.circular(10),
            
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                      'Efferegan 1000mg',
                      style: TextStyle(
                        color: AppColors.dark,
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),
                    ),
              ),
            ),
                Expanded(
                  child: Image.asset(ImageAssets.efferegan, 
                  // scale: 96,
                  fit: BoxFit.contain,
                  height: AppConstant.height(context) * 0.10,
                                ),
                ),
                SizedBox(height: AppConstant.height(context)*0.05,)
          ]),
        ),
      ),

      SizedBox(height: AppConstant.height(context) * 0.04,),
      Padding(
        // padding: const EdgeInsets.all(8.0),

      padding: const EdgeInsets.fromLTRB(10, 0, 16, 0),
        child: Text(
                        'About Drug',
                        style: TextStyle(
                          color: AppColors.dark,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),
                      ),
      ),
          SizedBox(height: AppConstant.height(context) * 0.02,),
      Padding(
        // padding: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.fromLTRB(10, 0, 14, 0),

        child: Text(
                        'Efferalgan is a medicine that contains paracetamol and asorbic acid and is indicated for the treatment of mild headache and/or fever Suitable for adults and children weighing more than 27kg',
                        style: TextStyle(
                          color: AppColors.dark,
                          // fontWeight: FontWeight.w500,
                          fontSize: 14
                        ),
                      ),
      ),
          SizedBox(height: AppConstant.height(context) * 0.02,),
      Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Dose',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Time',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'Schedule',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),

      child: Row(
        children: [
          Expanded(
            child: Text(
              '1 capsule/Day',
              style: TextStyle(
                color: AppColors.dark,
                // fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(width: 3,),
          Expanded(
            child: Text(
              '9:00 AM & 7:00 PM',
              style: TextStyle(
                color: AppColors.dark,
                // fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(width: 10,),

          Expanded(
            child: Text(
              '10 Days',
              style: TextStyle(
                color: AppColors.dark,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),
          // const SizedBox(height: ,),

    Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.fromLTRB(8, 10, 0, 0),

      
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Start Date',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              'End Date',
              style: TextStyle(
                color: AppColors.dark,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(child: Container(),),
        ],
      ),
    ),
    Padding(
      // padding: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),

      child: Row(
        children: [
          Expanded(
            child: Text(
              '10/04/2024',
              style: TextStyle(
                color: AppColors.dark,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '01/04/2024',
              style: TextStyle(
                color: AppColors.dark,
                fontSize: 16,
              ),
            ),
          ),
          Expanded(child: Container(),),

        ],
      ),
    ),
  ],
),
      SizedBox(height: AppConstant.height(context) * 0.03,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
          Container(
            width: AppConstant.width(context) * 0.42,
            height: AppConstant.height(context) * 0.06,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.secondaryDark,
              ),
              borderRadius: BorderRadius.circular(10),
              color: AppColors.plainWhite,
            ),
            child:  Center(
              child: Text("Remove",
              style: TextStyle(
                color: AppColors.secondaryDark,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
            ),
          ),

          
          Container(
            width: AppConstant.width(context) * 0.42,
            height: AppConstant.height(context) * 0.06,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.secondaryDark,
              ),
              borderRadius: BorderRadius.circular(10),
              color: AppColors.secondaryDark,
            ),
            child: Center(
              child: Text("Edit Schedule",
              style: TextStyle(
                color: AppColors.plainWhite,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
            ),
          ),
        ],
      ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
  currentIndex: currentIndex,
  onTap: (index) {
    // Update the current index and navigate to the corresponding page
    setState(() {
      currentIndex = index;
      // Navigate to the respective page based on the index
      switch (currentIndex) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => DashboardMain()),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AddPill()),
          );
          break;
        case 2:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => PillHistory()),
          );
          break;
      }
    });
  },
  selectedItemColor: AppColors.secondaryDark,
  items:  [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Container(
      decoration: BoxDecoration(
    shape: BoxShape.circle,
    boxShadow: [
      BoxShadow(
        color: AppColors.grey,
        blurRadius: 1.0,
        spreadRadius: 1.0,
      ),
    ],
  ),
      child: GestureDetector(
        onTap:() {Get.to(() => const AddPill());},
        child: CircleAvatar(
          // backgroundColor: AppColors.plainWhite,
          backgroundColor: AppColors.secondaryDark,
          child: Icon(Icons.add,
          color: AppColors.plainWhite)),
      ),
    ), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye_rounded), label: 'Pill History'),
  ],
)
    );
  }
}