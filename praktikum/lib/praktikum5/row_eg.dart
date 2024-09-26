import 'package:flutter/material.dart';

class RowEg extends StatelessWidget {
  const RowEg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.android),
            Icon(Icons.star),
            Icon(Icons.star_half),        
            Icon(Icons.star_border)
          ],
        ),
      ),
    );
  }
}