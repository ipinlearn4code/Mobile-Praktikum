import 'package:flutter/material.dart';
import 'package:praktikum/praktikum5/column_eg.dart';
import 'package:praktikum/praktikum5/expanded_eg.dart';
import 'package:praktikum/praktikum5/flexible_eg.dart';
import 'package:praktikum/praktikum5/my_statefull_widget.dart';
import 'package:praktikum/praktikum5/my_stateless_widget.dart';
import 'package:praktikum/praktikum5/row_eg.dart';
import 'package:praktikum/praktikum5/stack_eg.dart';
import 'package:praktikum/praktikum6/call_back.dart';
import 'package:praktikum/praktikum6/custom_dropdown.dart';
import 'package:praktikum/praktikum6/input_text_field.dart';
import 'package:praktikum/praktikum6/kode_gab.dart';
import 'package:praktikum/praktikum6/number_input_widget.dart';
import 'package:praktikum/praktikum6/switch_eg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Modul 5
      // home: const MyStatelessWidget(),
      // home: const MyStatefullWidget(),
      // home: const ColumnEg(),
      // home: const RowEg(),
      // home: StackEg(),
      // home: ExpandedEg(),
      // home: FlexibleEg(),
      // modul 6
      // home: InputTextField(),
      // home: NumberInputWidget(),
      // home: CustomDropdown(),
      // home: CallBack(),
      // home: SwitchEg(),
      home: KodeGab(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Halo, Flutter'),
            ElevatedButton(
              onPressed: () {
                print('Tombol ditekan!');
              },
              child: Text('Klik Saya'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
