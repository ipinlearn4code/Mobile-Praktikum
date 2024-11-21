import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> registerUser(
      String username, String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.0.253/ciApi/public/auth/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "username": username,
        "email": email,
        "password": password,
      }),
    );
    log(response.body);
    if (response.statusCode == 201) {
      log('User registered successfully');
      return;
    } else {
      log('Failed to register user: ${response.body}');
    }
  }

  void showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Registration'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Username: ${usernameController.text}'),
              Text('Email: ${emailController.text}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                registerUser(
                  usernameController.text,
                  emailController.text,
                  passwordController.text,
                );
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }

  bool validateInputs(BuildContext context) {
    final username = usernameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text;

    // Basic validation
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      showErrorDialog(context, 'All fields are required.');
      return false;
    }

    // Email validation
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
    if (!emailRegex.hasMatch(email)) {
      showErrorDialog(context, 'Enter a valid email address.');
      return false;
    }

    // Password length validation
    if (password.length < 6) {
      showErrorDialog(context, 'Password must be at least 6 characters.');
      return false;
    }

    return true;
  }

  void showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (validateInputs(context)) {
                  showConfirmationDialog(context);
                }
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
