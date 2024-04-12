import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pcm/models/nav_model.dart';
import 'package:pcm/screens/dashboard/add_pill.dart';
import 'package:pcm/screens/dashboard/dashboard_main_card.dart';
import 'package:pcm/screens/dashboard/drug_details.dart';
import 'package:pcm/screens/dashboard/pill_history.dart';
import 'package:pcm/screens/notification/notifications.dart';
import 'package:pcm/services/dataFirestore.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';
import 'package:pcm/widgets/color_card.dart';
// import 'package:pcm/widgets/custom_bottom_bar.dart';
import 'package:table_calendar/table_calendar.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';


class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  int currentIndex = 0;
  List<NavModel> pages = [];
final FirebaseFirestore db = FirebaseFirestore.instance;
   //   final CollectionReference pills = db.collection('pills');
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: StreamBuilder(
        stream: db.collection('pills').snapshots(),
        builder: (BuildContext context, snapshot) {
          return ListView(
             
            children: [
              SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
              Row(
                children: [
                   SizedBox(
                    width: AppConstant.width(context) * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello Martha", style:TextStyle(
                          color: AppColors.dark,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                        Text("Here is your plan for today", style:TextStyle(
                          color: AppColors.dark,
                          // fontWeight: FontWeight.w600
                        )),
                      ]
                    ),
                  ),
          
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 50,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: AppColors.secondaryDark,
          
                      ),
          
                      child: GestureDetector(
                        onTap: () {
                            Get.to(() =>  Notifications());
                          },
                        child: Icon(Icons.notifications_none,
                        color: AppColors.plainWhite,
                        size: 30,),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppConstant.width(context) * 0.02,
                  ),
                ]
              ),
          
              SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageAssets.welcomingOnboard),
              ),
              SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
          
          //         Center(
          //   child: TableCalendar(
          //     initialCalendarFormat: CalendarFormat.week,
          //     firstDay: DateTime.utc(2024, 1, 1), // Set the desired starting date
          //     lastDay: DateTime.utc(2024, 12, 31), // Set the desired ending date
          //     focusedDay: DateTime.now(), // Set the current date as the focused day
          //     focusedDayPredicate: (day) {
          //       // Show only the week with the current date
          //       return isSameWeek(day, DateTime.now());
          //     },
          //     calendarStyle: CalendarStyle(
          //       // Customize the appearance of the calendar
          //       // Example: Change the background color of the selected day
          //       selectedDecoration: BoxDecoration(
          //         color: Colors.blue,
          //         shape: BoxShape.circle,
          //       ),
          //     ),
          //   ),
          // ),
          TableCalendar(
            firstDay: DateTime.utc(2020, 01, 01),
            lastDay: DateTime.utc(2030, 01, 01),
            focusedDay: DateTime.now(),
            // availableCalendarFormats:  const {CalendarFormat.week: 'Week'},
            // availableCalendarFormats: ,
             headerStyle: HeaderStyle(formatButtonVisible: false),
             
            onPageChanged: (focusedDay) {
            var _focusedDay = focusedDay;
          },
          
          ),
          // Center(
          //   child:SfCalendar(
          //     view: CalendarView.month,
          //   )
          // ),
          // SfCalendar(
          //   view: CalendarView.week,
          //   firstDayOfWeek: DateTime.monday,
          //   initialDisplayDate: DateTime.now(),
          //   showNavigationArrow: true,
          //   headerStyle: CalendarHeaderStyle(
          //     textAlign: TextAlign.center,
          //     textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //   ),
          //   monthViewSettings: MonthViewSettings(showAgenda: false),
          //   dataSource: null, // Replace with your event data source
          //   onViewChanged: (viewChangedDetails) {
          //     if (viewChangedDetails.visibleDates.length > 7) {
          //       final firstVisibleDate = viewChangedDetails.visibleDates[0];
          //       final lastVisibleDate = viewChangedDetails.visibleDates[6];
          //       final visibleWeekDates = [
          //         firstVisibleDate,
          //         lastVisibleDate,
          //       ];
          //       // setState(() {
          //       //   visibleDates = visibleWeekDates;
          //       // });
          //     }
          //   },
          // ),
          
                  SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      color: AppColors.successLight,
          
                      ),
          
                      child:Center(
                        child: Text("Today",
                        style: TextStyle(
                          color: AppColors.successColor,
                          fontWeight: FontWeight.w800,
                          fontSize: 16
                        ),),
                      )
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColors.grey)
          
                      ),
          
                      child:Center(
                        child: Text("This Week",
                        style: TextStyle(
                          color: AppColors.grey,
                          // fontWeight: FontWeight.w800,
                          fontSize: 16
                        ),),
                      )
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: AppColors.grey,
          
                      )
          
                      ),
          
                      child:Center(
                        child: Text("This Month",
                        style: TextStyle(
                          color: AppColors.grey,
                          // fontWeight: FontWeight.w800,
                          fontSize: 16
                        ),),
                      )
                    ),
                    ],
                  ),
                  SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
                  if( !snapshot.hasData) Center(child: CircularProgressIndicator()),
          ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: (snapshot.data! as QuerySnapshot).docs.length,
          itemBuilder: (context, index)  {
              DocumentSnapshot pills =
                            // ignore: unnecessary_cast
                            (snapshot.data! as QuerySnapshot).docs[index];

return GestureDetector(
                        onTap: () {
                          Get.to(() => DrugDetails());
                        },
                        child: colorCard(
                          cardColor: AppColors.warningColor,
                          medName: pills['pillName'],
                          dose: '${pills['numOfPills']} capsule',
                          time1: pills['time1'],
                          time2: pills['time2'],
                          medImg: ImageAssets.efferegan));})
                        



// // ListTile(
// //                 title: Text(pills['pillName']));
//           })
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: GestureDetector(
                  //      onTap: (){
                  //       Get.to(() => DashboardMainCard());
                  //      },
                  //     child: Container(
                  //         height: AppConstant.height(context) * 0.40,
                  //         width: AppConstant.width(context) * 0.90,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(15),
                  //         border: Border.all(
                  //           color: AppColors.grey,
                      
                  //         )
                      
                  //         ),
                      
                  //         child:Center(
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                              
                  //             children: [
                  //               SvgPicture.asset(ImageAssets.alert,
                  //               color: AppColors.errorColor,),
                  //               const SizedBox(height: 20,),
                  //               Center(
                  //                 child: Text("No Drugs found. Click to add a schedule",
                  //                 style: TextStyle(
                  //                   color: AppColors.errorColor,
                  //                   // fontWeight: FontWeight.w800,
                  //                   fontSize: 16
                  //                 ),),
                  //               ),
                  //             ],
                  //           ),
                  //         )
                  //       ),
                  //   ),
                  // )
          
            ]
          );
        }
      ),
  //  int currentIndex = 0; // Define the current index for the selected item

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
          backgroundColor: AppColors.plainWhite,
          child: Icon(Icons.add,
          color: AppColors.dark)),
      ),
    ), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye_rounded), label: 'Pill History'),
  ],
)
      // bottomNavigationBar: CustomBottomBar(
      //   index: currentIndex,
      //     tap: (index) {
      //       if (index == currentIndex) {
      //         pages[index]
      //             .navKey
      //             .currentState
      //             ?.popUntil((route) => route.isFirst);
      //       } else {
      //         setState(() {
      //           currentIndex = index;
      //         });
      //       }
      //     },
      // ),
    );
  }
}