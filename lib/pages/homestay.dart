import 'package:flutter/material.dart';

class Homestay extends StatefulWidget {
  const Homestay({ Key? key }) : super(key: key);

  @override
  _HomestayState createState() => _HomestayState();
}

class _HomestayState extends State<Homestay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homestay'),
      ),
    );
  }
}