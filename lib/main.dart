import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/strings.dart';
import 'package:fruits_hub/core/routing/app_routers.dart';

void main() {
  runApp(const MyApp());
}
   AppRouter appRouter =AppRouter();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoutes,
      initialRoute: splashScreen,
    );
  }
}
