import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pcm/firebase_options.dart';
import 'package:pcm/screens/auth/sign_in.dart';
import 'package:pcm/screens/splash/splash_screen.dart';
// import 'package:sizer/sizer.dart';

void main() async{           
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        // primarySwatch: Color,
          
        // accentColor: Colors.amber,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        // accentColor: Colors.amber,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData.from(
        //     colorScheme: ColorScheme.light(primary: AppColors.kPrimaryColor)),
        title: 'HomeMain',
        theme: theme,
        darkTheme: darkTheme,
        home: const SplashScreen(),
      ),
    );
   
   } 
    //  AdaptiveTheme.of(context).setLight();
  }

