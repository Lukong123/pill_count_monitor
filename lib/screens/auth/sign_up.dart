import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pcm/screens/auth/sign_in.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/utils/styles/assets_strings.dart';
import 'package:pcm/widgets/app_button.dart';
import 'package:pcm/widgets/input_field.dart';
// import 'package:sizer/sizer.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
     late double width; // Declare the width variable with 'late'
     var passwordController = TextEditingController();
     var emailController = TextEditingController();


  @override
  void initState() {
    super.initState();
    width = MediaQuery.of(context).size.width; // Initialize the width here
  }

    return Scaffold(
      body: ListView(children: [
        SizedBox(
        height: AppConstant.height(context) * 0.02,
      ),
                   Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.dark),
            ),
          ),
          SizedBox(
        height: AppConstant.height(context) * 0.015,
      ),
      Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),

        child: Text(
                "Create an account to monitor your pills!",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.dark),
              ),
      ),
      
          SizedBox(
        height: AppConstant.height(context) * 0.017,
      ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Form(
              // key: provider.loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 16
                    ),
                  ),
                   const SizedBox(
                    height: 1.0,
                  ),
                  inputField(
                      controller: TextEditingController(),
                      onChanged: (value) {
                        // provider.setEmail(value);
                        // provider.validLogin();
                      },
                      keyboardType: TextInputType.text,
                      validator: (v) => v!.isEmpty
                          ? 'Please email field can not be empty!'
                          : null,
                      obscureText: false,
                      hintText: 'John Doe'),
                   
          SizedBox(
        height: AppConstant.height(context) * 0.023,
      ),
      Text(
                    "Email",
                    style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 16
                    ),
                  ),
                   const SizedBox(
                    height: 1.0,
                  ),
                  inputField(
                      controller: emailController,
                      onChanged: (value) {
                        // provider.setEmail(value);
                        // provider.validLogin();
                      },
                      keyboardType: TextInputType.text,
                      validator: (v) => v!.isEmpty
                          ? 'Please email field can not be empty!'
                          : null,
                      obscureText: false,
                      hintText: 'johndoe@gmail.com'),
                   
          SizedBox(
        height: AppConstant.height(context) * 0.023,
      ),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 16,
                    ),
                  ),
                   const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.grey)),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      
                      onChanged: (value) {
                        // provider.setPassword(value);
                        // provider.validLogin();
                      },
                      
                      cursorColor: AppColors.primaryDark,
                      validator: (v) => v!.isEmpty
                          ? 'Please password field can not be empty!'
                          : null,
                      style: const TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        
                      ),
                      decoration: InputDecoration(
                       hintText: '********',
                       border: InputBorder.none,
                       contentPadding: EdgeInsets.only(left: 5.0),
                      ),
                    ),
                  ),
                           
          SizedBox(
        height: AppConstant.height(context) * 0.023,
      ),
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      color: AppColors.dark,
                      fontSize: 16,
                    ),
                  ),
                   const SizedBox(
                    height: 2,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.grey)),
                    child: TextFormField(
                      controller: TextEditingController(),
                      obscureText: true,
                      
                      onChanged: (value) {
                        // provider.setPassword(value);
                        // provider.validLogin();
                      },
                      
                      cursorColor: AppColors.primaryDark,
                      validator: (v) => v!.isEmpty
                          ? 'Please password field can not be empty!'
                          : null,
                      style: const TextStyle(
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        
                      ),
                      decoration: InputDecoration(
                       hintText: '********',
                       border: InputBorder.none,
                       contentPadding: EdgeInsets.only(left: 5.0),
                      ),
                    ),
                  ),
          
                  SizedBox(
                    height: 2
                  ),
                 
                  SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
                ],
              ),
            ),
          ),
          // Consumer<LoginProvider>(builder: (context, login, child) {
          //   WidgetsBinding.instance.addPostFrameCallback((_) {
          //     if (login.reqMessage != '') {
          //       login.clear();
          //     }
          //   });
          //   return appButton(
          //       tap: () {
          //         if (!provider.loginFormKey.currentState!.validate()) {
          //         } else {
          //           login.login(
          //               emailPhone: provider.emailOrPhoneController.text.trim(),
          //               password: provider.passwordController.text.trim(),
          //               context: context);
          //         }
          //       },
          //       status: login.isLoading,
          //       enable: provider.isValidSignIn,
          //       bdColor: AppColors.kTettiary,
          //       bgColor: AppColors.kTettiary,
          //       textColor: AppColors.kWhiteColor,
          //       text: 'Sign in',
          //       icon: SvgPicture.asset(ImageAssets.arrow),
          //       context: context);
          // }),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.createUserWithEmailAndPassword(
                email: emailController.text,
                 password: passwordController.text
                 ).then((value) {
              // Get.to(() => SignIn());
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
                            'Sign Up',
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

          // appButton(
          //       tap: () {
          //         // if (!provider.loginFormKey.currentState!.validate()) {
          //         // } else {
          //         //   login.login(
          //         //       emailPhone: provider.emailOrPhoneController.text.trim(),
          //         //       password: provider.passwordController.text.trim(),
          //         //       context: context);
          //         // }
          //       },
          //       status: true,
          //       // enable: provider.isValidSignIn,
          //       enable: true,
          //       bdColor: AppColors.secondaryLight,
          //       bgColor: AppColors.secondaryLight,
          //       textColor: AppColors.plainWhite,
          //       text: 'Sign in',
          //       // icon: SvgPicture.asset(ImageAssets.arrow),
          //       context: context),
          SizedBox(
            height: AppConstant.height(context) * 0.05,
          ),
         
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
              SvgPicture.asset(ImageAssets.lineSvg),
              Text("Or Sign Up With", style: TextStyle(
                color: AppColors.dark
              ),),
              Image.asset(ImageAssets.linePng),

            ],),
            SizedBox(
            height: AppConstant.height(context) * 0.03,
          ),
              Center(child: Image.asset(ImageAssets.google)),
              SizedBox(
            height: AppConstant.height(context) * 0.03,
          ),
               Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(
                    fontSize: 15, color: AppColors.dark),
              ),
              const SizedBox(
                width: 4.0,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SignIn());
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColors.secondaryDark,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),

        ]),
    );
  }
}