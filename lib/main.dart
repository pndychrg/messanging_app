import 'package:flutter/material.dart';
import 'package:messanging_app/screens/welcome_screen.dart';
import 'package:messanging_app/theme.dart';

void main() {
  runApp(MyApp());
}

//

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      //by default the theme mode is system just specifying for clarification
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
