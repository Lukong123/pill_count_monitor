import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pcm/models/onboard_data.dart';
import 'package:pcm/screens/auth/sign_in.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/navigation/router.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';
import 'package:pcm/widgets/custom_button.dart';
import 'package:pcm/widgets/onboarding.dart';
// import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  //controller to keep track of page
  final PageController _controller = PageController();
  //checking for last page
  bool onLastPage = false;
   List<Map<String, String>> onBoardData = [
    {
      "image": ImageAssets.onboard_1,
      "title": "Never Miss A Dose Or Accidentally Overdose Again",
      "body":
          'Customize reminders based on your dosage frequency and medication schedules to ensure you stay on track with your medication regimen.',
    },
    {
      "image": ImageAssets.onboard_2,
      "title": "Organize and Control Your Health Journey",
      "body":
          'Maintain a record of past prescriptions, dosages, and changes made by healthcare professionals for easy reference.',
    },
  ];

  // late double width;
  @override
  Widget build(BuildContext context) {
    // var width = AppConstant.width(context) * 0.01; // Assign the value here
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.plainWhite,
      child: Stack(
        children: [
          Positioned(
            top: AppConstant.height(context) * 0.5,
            child: SvgPicture.asset(ImageAssets.logo, //test
                // width: AppConstant.width(context) * 0.01,
                width: width,
                height: AppConstant.height(context) * 0.55),
          ),
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  onLastPage = (value == 1);
                });
              },
              controller: _controller,
              itemCount: onBoardData.length,
              itemBuilder: ((context, index) => onBoard(
                    tap: () {
                      PageNavigator(ctx: context)
                          .nextPageOnly(page: const SignIn());
                    },
                    context: context,
                    image: onBoardData[index]['image'] as String,
                    title: onBoardData[index]['title'] as String,
                    body: onBoardData[index]['body'] as String,
                  ))),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmoothPageIndicator(
                        controller: _controller,
                        count: onBoardData.length,
                        effect: WormEffect(
                            radius: 10,
                            dotHeight: 10,
                            dotWidth: 20,
                            // dotWidth: 6.w,
                            activeDotColor: AppColors.secondaryDark,
                            dotColor: AppColors.secondaryLight,
                            type: WormType.underground),
                      ),
                      const SizedBox(height: 25,),
                      onLastPage
                          ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Center(
                                child: GestureDetector(
                                    onTap: () {
                                      PageNavigator(ctx: context)
                                          .nextPageOnly(page: const SignIn());
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
                                                      'Sign In',
                                                      style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.plainWhite,
                              decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),),
                              ),

                      const SizedBox(height: 10,),


                              GestureDetector(
                                    onTap: () {
                                      PageNavigator(ctx: context)
                                          .nextPageOnly(page: const SignIn());
                                    },
                                    child: Container(
                                                  width: MediaQuery.of(context).size.width * 0.85,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.plainWhite,
                                                    borderRadius: BorderRadius.circular(20.0),
                                                    border: Border.all(color: AppColors.secondaryDark),
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
                                                      'Sign Up',
                                                      style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondaryDark,
                              decoration: TextDecoration.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),),
                              
                            ],
                          )
                          : GestureDetector(
                              onTap: () {
                                _controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
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
                        'Next',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.plainWhite,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                            ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.08,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
