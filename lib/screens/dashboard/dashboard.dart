// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:pcm/models/nav_model.dart';
import 'package:pcm/screens/dashboard/add_pill.dart';
import 'package:pcm/screens/dashboard/dashboard_main.dart';
import 'package:pcm/screens/dashboard/pill_history.dart';
// import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/widgets/custom_bottom_bar.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final addpillNavKey= GlobalKey<NavigatorState>();
  final pillhistoryNavKey = GlobalKey<NavigatorState>();
  int currentIndex = 0;
  List<NavModel> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      NavModel(page: const DashboardMain(), navKey: homeNavKey),
      NavModel(page: const AddPill(), navKey: addpillNavKey),
      NavModel(page: const PillHistory(), navKey: pillhistoryNavKey),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (pages[currentIndex].navKey.currentState?.canPop() ?? false) {
          pages[currentIndex].navKey.currentState?.pop();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        // backgroundColor: AppColors.plainWhite,
        bottomNavigationBar: CustomBottomBar(
          index: currentIndex,
          tap: (index) {
            if (index == currentIndex) {
              pages[index]
                  .navKey
                  .currentState
                  ?.popUntil((route) => route.isFirst);
            } else {
              setState(() {
                currentIndex = index;
              });
            }
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: pages
              .map((page) => Navigator(
                    key: page.navKey,
                    onGenerateInitialRoutes: (navigator, initialRoute) {
                      return [
                        MaterialPageRoute(builder: (context) => page.page)
                      ];
                    },
                  ))
              .toList(),
        ),
      ),
    );
  }
}
