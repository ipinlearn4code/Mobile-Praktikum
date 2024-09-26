import 'package:flutter/material.dart';

class ExpandedEg extends StatelessWidget {
  const ExpandedEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Container(
              width: 100,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
