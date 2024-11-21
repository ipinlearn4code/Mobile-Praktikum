import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:praktikum/praktikum11/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  Future<void> logoutUser(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_token');
    log("Logout successful");
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (route) => false,
    );
  }

  Future<void> showToken(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('auth_token');

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Auth Token'),
        content: Text(token ?? 'No token found'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showToken(context),
              child: Text('Show Token'),
            ),
            ElevatedButton(
              onPressed: () => logoutUser(context),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
