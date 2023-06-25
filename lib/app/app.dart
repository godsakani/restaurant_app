import 'package:flutter/material.dart';

import '../styles/theme_manager.dart';
import '../utils/routesManager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({ Key? key }) : super(key: key);// default constructor

  const MyApp._internal(); // private named constructor

  static const MyApp instance =
      MyApp._internal(); // single instance --singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
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
