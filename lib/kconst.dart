import 'package:flutter/material.dart';

// Text Widget
class NewText extends StatelessWidget {
  final String data;
  const NewText({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}

// Click Me Widget
class ClickMe extends StatelessWidget {
  final String routeName;
  final String data;
  const ClickMe({super.key, required this.routeName, required this.data});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: NewText(data: data),
      ),
    );
  }
}
  TextStyle NewStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }