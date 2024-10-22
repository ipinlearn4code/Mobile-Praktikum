import 'package:flutter/material.dart';
import 'package:praktikum/praktikum7/second_page_nav.dart';
import 'package:praktikum/praktikum7/simple_nav.dart';

class Routes {
  // static const String homePage = '/';
  // static const String secondPage = '/secondPageRoute';

  // static Route<dynamic> generateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case homePage:
  //       return MaterialPageRoute(builder: (_) => MyHomePage());
  //     case secondPage:
  //       return MaterialPageRoute(builder: (_) => SecondPageRoute());
  //     default:
  //       return MaterialPageRoute(builder: (_) => Scaffold(
  //             body: Center(
  //               child: Text('No route defined for ${settings.name}'),
  //             ),
  //           ));
  //   }
  // }
  void main() {
    runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SimpleNav(),
        '/second': (context) => SecondPageNav(),
      },
    ));
  }
}
