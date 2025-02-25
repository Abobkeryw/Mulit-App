import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Go ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: 'Green ',
                style: TextStyle(color: Colors.deepPurple[800]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
