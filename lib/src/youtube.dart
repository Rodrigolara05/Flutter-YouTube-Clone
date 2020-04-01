import 'package:flutter/material.dart';
import 'package:youtube_clon/src/ui/screens/home_screen.dart';
import 'package:youtube_clon/src/ui/screens/splash_screen.dart';

class Youtube extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Clon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          primaryTextTheme: TextTheme(
              title: TextStyle(
                fontWeight: FontWeight.bold,
                //color: Colors.black,
                fontSize: 13,
              ),
              subtitle: TextStyle(color: Colors.grey, fontSize: 12.0,fontWeight: FontWeight.w400)),
          primaryIconTheme: IconThemeData(
            color: Colors.grey[700],
          )),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomeScreen(),
        '/splash': (BuildContext context) => new SplashScreen(),
      },
    );
  }
}
