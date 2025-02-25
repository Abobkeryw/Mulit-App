import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  final VoidCallback onReset;
  const Reset({
    required this.onReset,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 8),
        ),
        onPressed: onReset,
        child: Text("Reset",
            style: TextStyle(
              fontSize: 50,
              color: Colors.black,
            )));
  }
}
