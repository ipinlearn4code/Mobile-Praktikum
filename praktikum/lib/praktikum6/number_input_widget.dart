import 'dart:developer';

import 'package:flutter/material.dart';

class NumberInputWidget extends StatelessWidget {
  const NumberInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Masukkan Angka',
              border: OutlineInputBorder(),
            ),
            onChanged: (text) {
              log('Angka yang diinput: $text');
            },
          ),
        ],
      ),
    ));
  }
}
