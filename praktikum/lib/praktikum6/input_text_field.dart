import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Masukkan Nama Anda',
                border: OutlineInputBorder(),
              ),
              onChanged: (text) {
                print('Teks yang diinput: $text');
              },
            ),
          ],
        ),
      ),
    );
  }
}