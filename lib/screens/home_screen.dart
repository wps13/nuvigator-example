import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final Function onPressed;

  const HomeScreen({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
          child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Navigate to details'),
      )),
    );
  }
}
