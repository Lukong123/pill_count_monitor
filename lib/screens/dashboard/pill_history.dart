import 'package:flutter/material.dart';
import 'package:pcm/screens/dashboard/add_pill.dart';
import 'package:pcm/screens/dashboard/dashboard_main_card.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';
import 'package:pcm/widgets/history_card.dart';

class PillHistory extends StatefulWidget {
  const PillHistory({super.key});

  @override
  State<PillHistory> createState() => _PillHistoryState();
}

class _PillHistoryState extends State<PillHistory> {
  int currentIndex = 2;

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
                      'Pill History',
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
            SizedBox(height: AppConstant.height(context) * 0.02,),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                              width: AppConstant.width(context) * 0.95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: AppColors.grey
                                )
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.search),
                                    onPressed: () {
                                      // Perform search action
                                    },
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Search',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.filter_alt_outlined),
                                    onPressed: () {
                                      // Perform filter action
                                    },
                                  ),
                                ],
                              ),
                            ),
                    ),
            SizedBox(height: AppConstant.height(context) * 0.02,),
            Container(
              color: AppColors.primaryDark,
              child: SingleChildScrollView(
                child: Container(
                  color: AppColors.plainWhite,
                  child: Column(children: [
                    historyCard(
                      cardColor: AppColors.secondaryDark,
                            medName: 'Ibuprofen',
                            dose: '1 capsule',
                            date1: '07/03/2023',
                            date2: '30/03/2023',
                            medImg: ImageAssets.ibuprof
                    ),
                                
                     historyCard(
                      cardColor: AppColors.warningColor,
                            medName: 'Efferelegan 1000mg',
                            dose: '1 capsule',
                            date1: '07/03/2023',
                            date2: '07/03/2023',
                            medImg: ImageAssets.efferegan
                    ),
                    historyCard(
                      cardColor: AppColors.secondaryDark,
                            medName: 'Ibuprofen',
                            dose: '1 capsule',
                            date1: '07/03/2023',
                            date2: '30/03/2023',
                            medImg: ImageAssets.ibuprof
                    ),
                                
                     historyCard(
                      cardColor: AppColors.warningColor,
                            medName: 'Efferelegan 1000mg',
                            dose: '1 capsule',
                            date1: '07/03/2023',
                            date2: '07/03/2023',
                            medImg: ImageAssets.efferegan
                    ),
                    historyCard(
                      cardColor: AppColors.secondaryDark,
                            medName: 'Ibuprofen',
                            dose: '1 capsule',
                            date1: '07/03/2023',
                            date2: '30/03/2023',
                            medImg: ImageAssets.ibuprof
                    ),
                                
                     historyCard(
                      cardColor: AppColors.warningColor,
                            medName: 'Efferelegan 1000mg',
                            dose: '1 capsule',
                            date1: '07/03/2023',
                            date2: '07/03/2023',
                            medImg: ImageAssets.efferegan
                    ),
                  ]),
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
            MaterialPageRoute(builder: (context) => DashboardMainCard()),
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
      child: CircleAvatar(
        backgroundColor: AppColors.plainWhite,
        child: Icon(Icons.add,
        color: AppColors.dark)),
    ), label: ''),
    BottomNavigationBarItem(icon: Icon(Icons.remove_red_eye_rounded), label: 'Pill History'),
  ],
)
    );
  }
}
