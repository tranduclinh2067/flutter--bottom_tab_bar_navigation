import 'package:flutter/material.dart';

class Checking extends StatefulWidget {
  const Checking({ Key? key }) : super(key: key);

  @override
  _CheckingState createState() => _CheckingState();
}

class _CheckingState extends State<Checking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checking'),
      ),
    );
  }
}