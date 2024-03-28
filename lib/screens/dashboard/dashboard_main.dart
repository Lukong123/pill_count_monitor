import 'package:flutter/material.dart';
import 'package:pcm/utils/styles/app_colors.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Hello Martha", style:TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w600
                  )),
                  Text("Here is your plan for today", style:TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w600
                  )),
                ]
              )
            ]
          )
        ]
      )
    );
  }
}