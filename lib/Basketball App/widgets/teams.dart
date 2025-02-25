import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  final String teamName;
  final int score;
  final void Function(int) addPoints;
  const Teams({
    required this.score,
    required this.teamName,
    required this.addPoints,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          teamName,
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        //!sCORE
        Text(
          score.toString(),
          style: TextStyle(
            fontSize: 140,
            fontWeight: FontWeight.bold,
          ),
        ),
        //!BUTTONS
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          ),
          onPressed: () {
            addPoints(1);
          },
          child: Text(
            "Add 1 point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          ),
          onPressed: () {
            addPoints(2);
          },
          child: Text(
            "Add 2 point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
          ),
          onPressed: () {
            addPoints(3);
          },
          child: Text(
            "Add 3 point",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
