import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm/screens/auth/sign_up.dart';
import 'package:pcm/screens/dashboard/dashboard_main.dart';
import 'package:pcm/utils/constants/constants.dart';
import 'package:pcm/utils/navigation/router.dart';
import 'package:pcm/utils/styles/app_colors.dart';
import 'package:pcm/widgets/app_button.dart';
import 'package:pcm/widgets/input_field.dart';
// import 'package:sizer/sizer.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
     late double width; // Declare the width variable with 'late'
     var emailController = TextEditingController();
     var passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    width = MediaQuery.of(context).size.width; // Initialize the width here
  }

    return Scaffold(
      body: ListView(children: [
        SizedBox(
        height: AppConstant.height(context) * 0.05,
      ),
                   Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                  color: AppColors.dark),
            ),
          ),
          SizedBox(
        height: AppConstant.height(context) * 0.02,
      ),
      Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),

        child: Text(
                "Welcome back! Sign In to continue \n monitoring your pill count.",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color: AppColors.dark),
              ),
      ),
      
          SizedBox(
        height: AppConstant.height(context) * 0.03,
      ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Form(
              // key: provider.loginFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
        height: AppConstant.height(context) * 0.05,
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
                    height: 4,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        // Get.to(() => const PasswordReset(),
                        //     duration: const Duration(
                        //       milliseconds: 800,
                        //     ),
                        //     curve: Curves.easeInCirc,
                        //     transition: Transition.fadeIn);
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: AppColors.errorColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppConstant.height(context) * 0.04,
                  ),
                ],
              ),
            ),
          ),
                  GestureDetector(
            onTap: () {
              // Get.to(() => const DashboardMain());
               FirebaseAuth.instance.signInWithEmailAndPassword(
                email: emailController.text.trim(),
                 password: passwordController.text
                 ).then((value) {
              // Get.to(() => SignIn());
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashboardMain()));

                 }).onError((error, stackTrace) {
                  print("Error: (error.toString())");
                  print(error.toString());
                 });
            },
            child: Align(
              alignment: Alignment.center,
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

          SizedBox(
            height: AppConstant.height(context) * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account?',
                style: TextStyle(
                    fontSize: 15, color: AppColors.dark),
              ),
              const SizedBox(
                width: 4.0,
              ),
              GestureDetector(
                // onTap: () {
                //   Get.to(() => const SignUp());
                // },
                child: GestureDetector(
                  onTap: (){
                  Get.to(() => const SignUp());

                  },
                    
                    
                  
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColors.secondaryDark,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          )
        ]),
    );
  }
}