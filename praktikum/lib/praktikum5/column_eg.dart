import 'package:flutter/material.dart';

class ColumnEg extends StatelessWidget {
  const ColumnEg({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('ini adalah widget ke 1'),
            Text('ini adalah widget ke 2'),
            Text('ini adalah widget ke 3'),
            Text('ini adalah widget ke 55555555'),
            Text('Panjang text ini dibuat beda'),
            Text('untuk mengetahui crossAxisAlignment'),
          ],
        ),
      ),
    );
  }
}
