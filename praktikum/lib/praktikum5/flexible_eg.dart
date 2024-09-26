import 'package:flutter/material.dart';

class FlexibleEg extends StatelessWidget {
  const FlexibleEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          Flexible(
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.green,
            ),
          ), 
          Flexible(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            child: Container(
              color: const Color.fromARGB(255, 34, 26, 26),
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.green,
            ),
          ), 
          Flexible(
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.blue,
            ),
          ),
          Flexible(
            child: Container(
              color: Colors.green,
            ),
          ), 
          Flexible(
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    ));
  }
}
