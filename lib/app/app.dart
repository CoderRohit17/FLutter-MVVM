import 'package:flutter/material.dart';
import 'package:flutter_mvvm/presentation/resources/routes_manager.dart';
import 'package:flutter_mvvm/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key); // default constructor

  MyApp._internal(); // Private named constructor
  int appState = 0;

  static final MyApp instance =
      MyApp._internal(); // Single instance -- singleton

  factory MyApp() => instance; // Factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
