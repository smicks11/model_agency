import 'package:bma/Client/Screens/Authentication/UI/client_signIn.dart';
import 'package:bma/Client/Screens/OnBoarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:statusbarz/statusbarz.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StatusbarzCapturer(
      child: MaterialApp(
        title: 'BMA',
        debugShowCheckedModeBanner: false,
        navigatorObservers: [Statusbarz.instance.observer],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnBoarding(),
      ),
    );
  }
}

