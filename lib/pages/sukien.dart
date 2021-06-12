import 'package:flutter/material.dart';

class Sukien extends StatefulWidget {
  const Sukien({ Key? key }) : super(key: key);

  @override
  _SukienState createState() => _SukienState();
}

class _SukienState extends State<Sukien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sukien'),
      ),
    );
  }
}