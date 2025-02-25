import 'package:flutter/material.dart';

class Buttonicon extends StatelessWidget {
  final String data;
  final Color color;
  final void Function()? func;
  const Buttonicon(
      {super.key, required this.data, required this.color, required this.func});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: 70,
        color: color,
        child: Text(
          data,
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
