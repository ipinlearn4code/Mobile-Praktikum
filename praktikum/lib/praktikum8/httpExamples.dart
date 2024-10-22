import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Httpexamples extends StatelessWidget {
  const Httpexamples({super.key});

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      log('Title: ${data['title']}');
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Fetch Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: fetchData,
          child: Text('Fetch Data'),
        ),
      ),
    );
  }
}
