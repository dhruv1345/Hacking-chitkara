import 'package:flutter/material.dart';
import 'package:video_clips_app/pages/productlisting.dart';
import 'package:video_clips_app/pages/uploading.dart';
import './pages/sign_up_page.dart';
import './pages/login_page.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.yellow.shade600,
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark // status bar color
        ));

    return MaterialApp(
      title: 'Video App',
      theme: ThemeData(primarySwatch: Colors.lightBlue, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // routes: {
      //   '/': (context) => LoginPage(),
      //   '/signup': (context) => SignUpPage(),
      // },
      home: productslist(),
    );
  }
}
