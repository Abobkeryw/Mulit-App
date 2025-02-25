import 'package:flutter/material.dart';

class Flashlight extends StatefulWidget {
  const Flashlight({
    super.key,
  });

  @override
  State<Flashlight> createState() => _FlashlightState();
}


class _FlashlightState extends State<Flashlight> {
bool switcher = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Icon(
            Icons.flash_on,
            color: switcher ? Colors.white : Colors.amberAccent,
            size: 100,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                switcher = !switcher;
              });
            },
            color: switcher ? Colors.red : Colors.green,
            child: Text(
              switcher ? 'On' : 'Off',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
