// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> _options = ['Pilihan 1', 'Pilihan 2', 'Pilihan 3'];
  String _selectedOption = 'Pilihan 1';
  
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
