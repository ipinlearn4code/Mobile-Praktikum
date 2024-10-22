import 'dart:developer';

import 'package:flutter/material.dart';

class SecondPageNav extends StatelessWidget {
  const SecondPageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            log("Navigating to Home Page");
            Navigator.pop(context);
          },
          child: Text('Back to Home Page'),
        ),
      ),
    );
  }
}
