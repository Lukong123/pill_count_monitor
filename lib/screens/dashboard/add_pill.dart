import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm/screens/dashboard/dashboard_main.dart';
import 'package:pcm/screens/dashboard/pill_history.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:intl/intl.dart'; 

class AddPill extends StatefulWidget {
  const AddPill({super.key});
  

  @override
  State<AddPill> createState() => _AddPillState();
    // _TimePickerContainerState createState() => _TimePickerContainerState();
}

class _AddPillState extends State<AddPill> {
  int currentIndex = 1;
  int pillCount = 0;
  DateTime? selectedDate1;
  DateTime? selectedDate2;
  String? date1;
  String? date2;
  Future<void> _selectDate1(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1990),
    lastDate: DateTime.now(),
  );

  if (picked != null) {
    setState(() {
      selectedDate1 = picked;
      date1 = DateFormat('yyyy/MM/dd').format(selectedDate1!);
    });
  }
}

  Future<void> _selectDate2(BuildContext context) async {
  final DateTime? picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(1990),
    lastDate: DateTime.now(),
  );

  if (picked != null) {
    setState(() {
      selectedDate2 = picked;
      date2 = DateFormat('yyyy/MM/dd').format(selectedDate2!);
    });
  }
}


 TimeOfDay? selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  void incrementPillCount() {
    setState(() {
      pillCount++;
    });
  }

  void decrementPillCount() {
    if (pillCount > 0) {
      setState(() {
        pillCount--;
      });
    }
  }



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
                'Add Pill',
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
                  'Pill Name',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
        ),

        Align(
          alignment: Alignment.center,
          child: Container(
              height: 45,
              width: AppConstant.width(context) * 0.95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppColors.grey
                )
              ),
              child: TextFormField(
                controller: TextEditingController(),
                // keyboardType: keyboardType,
                // validator: validator,
                // onChanged: onChanged,
                cursorColor: AppColors.secondaryDark,
                // autofocus: true,
                style: TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 15.0),
                  hintText: 'Efferegan 1500mg',
                  hintStyle: TextStyle(fontSize: 12.0),
                  filled: false,
                  enabled: true,
                  border: InputBorder.none,
                  fillColor: AppColors.plainWhite,
                  focusColor: AppColors.secondaryDark,
                  hoverColor: AppColors.secondaryDark,
                ),
              ),
            ),
        ),
        
      //  SizedBox(
      //           height: AppConstant.height(context) * 0.04,
      //         ),
       SizedBox(
                height: AppConstant.height(context) * 0.02,
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
                  'Number of Pill',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
        ),
     
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
       SizedBox(
                width: AppConstant.width(context) * 0.06,
              ),
        CircleAvatar(
          backgroundColor: AppColors.secondaryDark,
          child: IconButton(
            icon: Icon(Icons.remove,
            color: AppColors.plainWhite,),
            onPressed: decrementPillCount,
          ),
        ),
        SizedBox(width: AppConstant.width(context) * 0.08),
        Container(
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: AppColors.grey,
            border: Border.all(color: AppColors.grey, width: 1.0),
          ),
          
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Center(
                  child: Text(
                    pillCount.toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(width: 8),
              const Text(
                'pills',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        SizedBox(width: AppConstant.width(context) * 0.08),
        CircleAvatar(
          backgroundColor: AppColors.secondaryDark,
          child: IconButton(
            icon: Icon(Icons.add,
            color: AppColors.plainWhite,),
            onPressed: incrementPillCount,
          ),
        ),
        SizedBox(width: AppConstant.width(context) * 0.05),

      ],
    ),
       
     SizedBox(
                height: AppConstant.height(context) * 0.02,
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               
     SizedBox(
                width: AppConstant.width(context) * 0.04,
              ),
              Text(
                  'Start Date',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
                SizedBox(
                width: AppConstant.width(context) * 0.30,
              ),
                Text(
                  'End Date',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
            ],
          ),
          SizedBox(
                height: AppConstant.height(context) * 0.02,
              ),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: AppConstant.width(context) * 0.04,

                    ),
                    Container(
                      width: AppConstant.width(context) * 0.45,
                      decoration: BoxDecoration(
                       border: Border.all(
                          color: AppColors.grey,
                          width: 1
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: 'yyyy/mm/dd',
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                                              ),
                                              keyboardType: TextInputType.datetime,
                                              onTap: () {
                                                _selectDate1(context);
                                              },
                                              readOnly: true,
                                              controller: TextEditingController(
                                                text: selectedDate1 != null ? DateFormat('yyyy/MM/dd').format(selectedDate1!) : '',
                                              ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () {
                _selectDate1(context);
                            },
                          ),
                        ],
                      ),
                    ),
                
                          SizedBox(width: AppConstant.width(context)*0.05,),
                          Container(
                      width: AppConstant.width(context)*0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.grey,
                          width: 1
                        ),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: 'yyyy/mm/dd',
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                                              ),
                                              keyboardType: TextInputType.datetime,
                                              onTap: () {
                                                _selectDate2(context);
                                              },
                                              readOnly: true,
                                              controller: TextEditingController(
                                                text: selectedDate2 != null ? DateFormat('yyyy/MM/dd').format(selectedDate2!) : '',
                                              ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.calendar_today),
                            onPressed: () {
                _selectDate2(context);
                            },
                          ),
                        ],
                      ),
                    ),
                            ],
                          ),
              ),
          SizedBox(
                height: AppConstant.height(context) * 0.02,
              ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
                  'Time',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
        ),

        
          SizedBox(
                height: AppConstant.height(context) * 0.01,
              ),

        Align(
          alignment: Alignment.center,
          child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  _selectTime(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    selectedTime != null
                        ? selectedTime!.format(context)
                        : 'Select Time',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.access_time),
              onPressed: () {
                _selectTime(context);
              },
            ),
          ],
                ),),
        ),

      SizedBox(
                height: AppConstant.height(context) * 0.01,
              ),

        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
                _selectTime(context);

            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 95,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                color: AppColors.primaryLight,
                  
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(3.0, 0, 5 , 5),
                  child: Row(children: [
                    Icon(Icons.add,
                    color: AppColors.primaryDark,),
                    Text("Add Time",
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontWeight: FontWeight.w500
                    ),)
                  ]),
                ),
              ),
            ),
          ),
        ),
      
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
          child: Text(
                  'Schedule',
                  style: TextStyle(
                    color: AppColors.dark,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                ),
        ),
         Row(
              children: [
                   SizedBox(width: AppConstant.width(context) * 0.03),

                 Container(
                    height: 35,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: AppColors.successLight,
    
                    ),
    
                    child:Center(
                      child: Text("After Breakfast",
                      style: TextStyle(
                        color: AppColors.successColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),),
                    )
                  ),
                  const SizedBox(width: 15,),
                   Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    color: AppColors.errorLight,
    
                    ),
    
                    child:Center(
                      child: Text("After Lunch",
                      style: TextStyle(
                        color: AppColors.errorColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),),
                    )
                  ),
                   SizedBox(width: AppConstant.width(context) * 0.05),
                CircleAvatar(
                  backgroundColor: AppColors.secondaryDark,
                  child: IconButton(
                    icon: Icon(Icons.add,
                    color: AppColors.plainWhite,),
                    // onPressed: incrementPillCount,
                    onPressed: (){},
                  ),
                ),
              ],
            ),
              SizedBox(height: AppConstant.height(context)* 0.03,),
                   Align(
                    alignment: Alignment.center,
                     child: Container(
                      height: 40,
                      width: AppConstant.width(context)* 0.90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: AppColors.secondaryDark,
                         
                      ),
                         
                      child:Center(
                        child: Text("Add Reminder",
                        style: TextStyle(
                          color: AppColors.plainWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),),
                      )
                                       ),
                   ),
              SizedBox(height: AppConstant.height(context)* 0.03,),




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