import 'package:flutter/material.dart';

class Upper extends StatelessWidget {
  final int num ;
  const Upper({
    super.key,required this.num
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 350,
      color: const Color.fromRGBO(68, 138, 255, 1),
      child: Text(
        num.toString(),
        style: TextStyle(
            color: Colors.white, fontSize: 100, fontWeight: FontWeight.bold),
      ),
    );
  }
}
