import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('color app bar'),
      ),
      body: Text('Text colors'),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.access_time),
      ),
    );
  }
}
