import 'package:flutter/material.dart';

class SecondPageData extends StatelessWidget {
  final String data;
  SecondPageData({required this.data});
  // const SecondPageData({super.key});

  @override
  Widget build(BuildContext context) {
    String data = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Text(data),
      ),
    );
  }
}
