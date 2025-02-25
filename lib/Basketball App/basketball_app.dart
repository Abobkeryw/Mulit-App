import 'widgets/reset.dart';
import 'widgets/teams.dart';
import 'package:flutter/material.dart';

class BasketballApp extends StatefulWidget {
  const BasketballApp({super.key});

  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  int teamAScore = 0;
  int teamBScore = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('Basketball App',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Teams(
                  teamName: "Team A",
                  score: teamAScore,
                  addPoints: (n) {
                    setState(() {
                      teamAScore += n;
                    });
                  },
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 10,
                ),
                Teams(
                  teamName: "Team B",
                  score: teamBScore,
                  addPoints: (n) {
                    setState(() {
                      teamBScore += n;
                    });
                  },
                ),
              ],
            ),
          ),
          Reset(
            onReset: () {
              setState(() {
                teamAScore = 0;
                teamBScore = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
