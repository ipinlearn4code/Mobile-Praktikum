import 'dart:developer';

import 'package:flutter/material.dart';

class SwitchEg extends StatefulWidget {
  const SwitchEg({super.key});
  @override
  State<SwitchEg> createState() => _SwitchEgState();
}

class _SwitchEgState extends State<SwitchEg> {
  bool _switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Switch(value: _switchValue, onChanged: (newValue){
          setState(() {
            _switchValue = newValue;
          });
          log('value $newValue');
        }),
      ),
    );
  }

}
