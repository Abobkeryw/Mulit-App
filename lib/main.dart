import 'package:flutter/material.dart';
import 'package:myapp_threeinone/Route/route_generator.dart';
import 'package:myapp_threeinone/Route/route_name.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.onboarding,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
