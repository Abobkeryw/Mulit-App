import 'package:flutter/material.dart';
import 'button.dart';
import 'upperbody.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int number = 10;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Upper(num: number),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttonicon(
                  data: '+1',
                  color: Colors.green,
                  func: () {
                    setState(() {
                      if (number < 100) {
                        number++;
                      }
                    });
                  },
                ),
                Buttonicon(
                  data: '+2',
                  color: Colors.green,
                  func: () {
                    setState(() {
                      if (number < 100) {
                        number = number + 2;
                      }
                    });
                  },
                ),
                Buttonicon(
                  data: '-1',
                  color: Colors.red,
                  func: () {
                    setState(() {
                      if (number <= 0) {
                      } else {
                        number--;
                      }
                    });
                  },
                ),
                Buttonicon(
                  data: '-2',
                  color: Colors.red,
                  func: () {
                    setState(() {
                      if (number <= 0) {
                      } else {
                        number = number - 2;
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttonicon(
                  data: '+3',
                  color: Colors.green,
                  func: () {
                    setState(() {
                      if (number < 100) {
                        number = number + 3;
                      }
                    });
                  },
                ),
                Buttonicon(
                  data: '+4',
                  color: Colors.green,
                  func: () {
                    setState(() {
                      if (number < 100) {
                        number = number + 4;
                      }
                    });
                  },
                ),
                Buttonicon(
                  data: '-3',
                  color: Colors.red,
                  func: () {
                    setState(() {
                      if (number <= 0) {
                      } else {
                        number = number - 3;
                      }
                    });
                  },
                ),
                Buttonicon(
                  data: '-4',
                  color: Colors.red,
                  func: () {
                    setState(() {
                      if (number <= 0) {
                      } else {
                        number = number - 4;
                      }
                    });
                  },
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
