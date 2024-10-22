import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:praktikum/praktikum7/dynamic_page.dart';
import 'package:praktikum/praktikum7/second_page_nav.dart';

class SimpleNav extends StatelessWidget {
  const SimpleNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            log("Navigating to Second Page");
            // Navigator.pushNamed(
            //   context, '/second', arguments: 'Hello from Home Page',
            // );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DynamicPage(title: 'Dinamis Page'),
              ),
            );

          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
  
}
