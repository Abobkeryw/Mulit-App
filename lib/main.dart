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
    return MaterialApp( initialRoute: RouteName.fourapp,
    
    onGenerateRoute: RouteGenerator.generateRoute,);
  }
}
