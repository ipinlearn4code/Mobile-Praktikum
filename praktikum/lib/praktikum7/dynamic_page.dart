import 'dart:developer';

import 'package:flutter/material.dart';

class DynamicPage extends StatelessWidget {
  // const DynamicPage({super.key});

  final String title;
  DynamicPage({required this.title}) {
    log("Dynamic Nav Berfungsi jika ini tampil");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back to Home Page'),
        ),
      ),
    );
  }
}
