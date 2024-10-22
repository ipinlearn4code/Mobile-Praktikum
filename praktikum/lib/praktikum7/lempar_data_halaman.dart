import 'package:flutter/material.dart';
import 'package:praktikum/praktikum7/second_page_data.dart';

class LemparDataHalaman extends StatelessWidget {
  const LemparDataHalaman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context, '/second',
              arguments: 'iNI DATA DARI PAGE SEBELUMYA',
            );
          },
          child: Text('Go to Second Page'),
        ),
      ),

    );
  }
}