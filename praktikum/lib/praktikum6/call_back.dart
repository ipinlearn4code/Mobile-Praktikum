import 'dart:developer';

import 'package:flutter/material.dart';

class CallBack extends StatefulWidget {
  const CallBack({super.key});

  @override
  State<CallBack> createState() => _CallBackState();
}

class _CallBackState extends State<CallBack> {
  void _setState() {
    return setState(() {
      if (_sliderValue < 100) _sliderValue++; // Increment slider value
    });
  }

  double _sliderValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _setState();
                log('Awwww saya diklik!');
              },
              child: Text('Klik Saya'),
            ),
            Slider(
              value: _sliderValue,
              min: 0,
              max: 100,
              onChanged: (newValue) {
                // Incrementing the slider value
                _setState();
                log('Nilai slider: $_sliderValue'); // Log updated slider value
              },
            ),
            // Displaying the slider value for reference
            Text('Slider Value: $_sliderValue'),
          ],
        ),
      ),
    );
  }
}
