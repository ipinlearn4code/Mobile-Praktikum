import 'package:flutter/material.dart';
import 'package:praktikum/praktikum11/login_page.dart';
import 'package:praktikum/praktikum11/register_page.dart';
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
import 'package:praktikum/praktikum7/lempar_data_halaman.dart';
import 'package:praktikum/praktikum7/second_page_data.dart';
import 'package:praktikum/praktikum7/second_page_nav.dart';
import 'package:praktikum/praktikum7/simple_nav.dart';
import 'package:praktikum/praktikum8/httpExamples.dart';
import 'package:praktikum/praktikum8/imageenetwork.dart';
import 'package:praktikum/praktikum8/shared_pref_dark_mode.dart';
import 'package:praktikum/praktikum8/shared_preference_examples.dart';

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
      // home: KodeGab(),
      // modul 7
      // home: SimpleNav(),
      // home: LemparDataHalaman(),
      routes: {
        // simplenav
        '/': (context) => RegisterPage(),
        '/second': (context) => SecondPageNav(),

        // '/': (context) => LemparDataHalaman(),
        // '/second': (context) => SecondPageData(data: '',),
      }
    );
    
  }
}