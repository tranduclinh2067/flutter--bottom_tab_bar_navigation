import 'package:flutter/material.dart';
import 'package:bottom_tab_bar_navigation/pages/blog.dart';
import 'package:bottom_tab_bar_navigation/pages/sukien.dart';
import 'package:bottom_tab_bar_navigation/pages/checking.dart';
import 'package:bottom_tab_bar_navigation/pages/homestay.dart';

class Khampha extends StatefulWidget {
  const Khampha({ Key? key }) : super(key: key);

  @override
  _KhamphaState createState() => _KhamphaState();
}

class _KhamphaState extends State<Khampha> {

  int currentTab = 0;
  final List<Widget> screen = [
    Checking(),
    Homestay(),
    Blog(),
    Sukien(),
  ];

  Widget currentScreen = Checking();

 final PageStorageBucket bucket = PageStorageBucket();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.trip_origin_sharp),
        backgroundColor: Color(0xffff1744),
        onPressed: (){},
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Checking();
                      currentTab = 0;
                    },);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Icon(
                      Icons.picture_in_picture_alt_rounded,
                      color: currentTab == 0 ? Color(0xff78ACD1) : Color(0xff905CD1),
                    ),
                    Text(
                      "Checking",
                      style: TextStyle(color: currentTab == 0 ? Color(0xff78ACD1) : Color(0xff905CD1),),
                    )
                  ],),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Homestay();
                      currentTab = 1;
                    },);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Icon(
                      Icons.houseboat,
                      color: currentTab == 1 ? Color(0xff78ACD1) : Color(0xff905CD1),
                    ),
                    Text(
                      "Homestay",
                      style: TextStyle(color: currentTab == 1 ? Color(0xff78ACD1) : Color(0xff905CD1),),
                    )
                  ],),
                ),
              ],),
              Row(children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Blog();
                      currentTab = 2;
                    },);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Icon(
                      Icons.dashboard,
                      color: currentTab == 2 ? Color(0xff78ACD1) : Color(0xff905CD1),
                    ),
                    Text(
                      "Blog",
                      style: TextStyle(color: currentTab == 2 ? Color(0xff78ACD1) : Color(0xff905CD1),),
                    )
                  ],),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      currentScreen = Checking();
                      currentTab = 3;
                    },);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Icon(
                      Icons.sell_rounded,
                      color: currentTab == 3 ? Color(0xff78ACD1) : Color(0xff905CD1),
                    ),
                    Text(
                      "Sự kiện",
                      style: TextStyle(color: currentTab == 3 ? Color(0xff78ACD1) : Color(0xff905CD1),),
                    )
                  ],),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}