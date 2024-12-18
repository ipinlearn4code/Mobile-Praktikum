// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> _options = ['Kalau tidak milih saya', 'Ya pilih saya', 'Masa gak milih'];
  String _selectedOption = 'Kalau tidak milih saya';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              value: _selectedOption,
              items: _options.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                print('Pilihan yang dipilih: $newValue');
              },
            ),
          ],
        ),
      ),
    );
  }
}
