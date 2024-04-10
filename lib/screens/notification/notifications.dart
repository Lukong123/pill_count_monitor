import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm/screens/auth/sign_in.dart';
import 'package:pcm/screens/dashboard/add_pill.dart';
import 'package:pcm/screens/dashboard/dashboard_main.dart';
import 'package:pcm/screens/dashboard/pill_history.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
       SizedBox(height: AppConstant.height(context) * 0.04,),
        Center(
          child: Text(
                'Today',
                style: TextStyle(
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
                )),
        ),
       SizedBox(height: AppConstant.height(context) * 0.04,),
       Align(
        alignment: Alignment.center,
         child: Container(
          width: AppConstant.width(context) * 0.95,
          // height: AppConstant.height(context) * 0.09,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                    'New Apointment',
                    style: TextStyle(
                      color: AppColors.secondaryDark,
                      fontWeight: FontWeight.w500,
                      fontSize: 19
                    )),
                  ),
                ),
                SizedBox(width: AppConstant.width(context)* 0.2,),
                Align(alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                  '2 mins ago',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                  )),
                ),)
              ],),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("You have an apointment with the Gynacologist",
                    style: TextStyle(
                      color: AppColors.dark,
                    ),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: Expanded(
                                child: Column(
                                  children: [
                                    Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Image.asset(ImageAssets.doctor),
                      ),
                      SizedBox(width: 8), // Add some spacing between the image and the text boxes
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr Owen Pearl",
                            style: TextStyle(
                              color: AppColors.dark,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Gynecologist",
                            style: TextStyle(
                              color: AppColors.dark,
                              // fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                                    ),
                                  ],
                                ),
                              ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                    
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Icon(Icons.calendar_month_outlined,
                          color: AppColors.errorColor,),
                          const SizedBox(width: 10,),
                          Text("21/04/2024")
                    
                        ],),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Icon(Icons.alarm,
                          color: AppColors.errorColor,),
                          const SizedBox(width: 10,),

                          Text("10:00 AM")
                    
                        ],)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
          
         ),
       ),

 SizedBox(height: AppConstant.height(context) * 0.04,),
        Center(
          child: Text(
                '23/01/2024',
                style: TextStyle(
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
                )),
        ),
       SizedBox(height: AppConstant.height(context) * 0.04,),
       Align(
        alignment: Alignment.center,
         child: Container(
          width: AppConstant.width(context) * 0.95,
          // height: AppConstant.height(context) * 0.09,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                    'Apointment',
                    style: TextStyle(
                      color: AppColors.secondaryDark,
                      fontWeight: FontWeight.w500,
                      fontSize: 19
                    )),
                  ),
                ),
                SizedBox(width: AppConstant.width(context)* 0.2,),
                Align(alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                  '23/01/2024',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w500,
                    fontSize: 15
                  )),
                ),)
              ],),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("You have an apointment with the Gynacologist",
                    style: TextStyle(
                      color: AppColors.dark,
                    ),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:20.0),
                    child: Expanded(
                                child: Column(
                                  children: [
                                    Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Image.asset(ImageAssets.doctor),
                      ),
                      SizedBox(width: 8), // Add some spacing between the image and the text boxes
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr Owen Pearl",
                            style: TextStyle(
                              color: AppColors.dark,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Gynecologist",
                            style: TextStyle(
                              color: AppColors.dark,
                              // fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                                    ),
                                  ],
                                ),
                              ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                    
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Icon(Icons.calendar_month_outlined,
                          color: AppColors.errorColor,),
                          const SizedBox(width: 10,),
                          Text("21/04/2024")
                    
                        ],),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Icon(Icons.alarm,
                          color: AppColors.errorColor,),
                          const SizedBox(width: 10,),

                          Text("10:00 AM")
                    
                        ],)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
            ],
          ),
          
         ),
       ),

        Align(
            alignment: Alignment.center,
            child: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
              // Get.to(() => SignIn());
              print("logged out");
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => SignIn()));

                 }).onError((error, stackTrace) {
                  print("Error: (error.toString())");
                  print(error.toString());
                 });
            },
              child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryDark,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(0, 2),
                              blurRadius: 4.0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Log Out',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.plainWhite,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
            ),
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