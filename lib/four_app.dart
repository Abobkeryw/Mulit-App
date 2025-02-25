import 'package:flutter/material.dart';
import 'Route/route_name.dart';
import 'kconst.dart';

class FourApp extends StatelessWidget {
  const FourApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text('Home Screen', style: NewStyle())),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          ClickMe(routeName: RouteName.basketball, data: 'Basketball'),
          ClickMe(routeName: RouteName.counter, data: 'Counter'),
          ClickMe(routeName: RouteName.flashlight, data: 'FlashLight'),
          ClickMe(routeName: RouteName.flashscreen, data: 'FlashScreen'),
        ],
      ),
    );
  }
}
