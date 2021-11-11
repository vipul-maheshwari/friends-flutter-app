// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:friendsapp/Screens/chandlerscreen.dart';
import 'package:friendsapp/Screens/joeyscreen.dart';
import 'package:friendsapp/Screens/monicascreen.dart';
import 'package:friendsapp/Screens/rachelscreen.dart';
import 'package:friendsapp/Screens/rossscreen.dart';
import 'package:friendsapp/Screens/phoebescreen.dart';

void main() {
  runApp(YourId());
}

// ignore: use_key_in_widget_constructors
class YourId extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<YourId> createState() => _YourIdState();
}

class _YourIdState extends State<YourId> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.black,
            title: Text(
              'F.R.I.E.N.D.S',
              style: TextStyle(
                fontFamily: 'Pacifico',
                letterSpacing: 4.0,
                wordSpacing: 10.0,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            elevation: 5.0,
            bottom: TabBar(
              tabs: const [
                Tab(
                  icon: Icon(
                    //Chandlerscreen.icon,
                    MdiIcons.alphaCBox,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    //Monicascreen.icon,
                    MdiIcons.alphaMBox,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    //Rossscreen.icon,
                    MdiIcons.alphaRBox,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    //PhoebeScreen.icon,
                    MdiIcons.alphaPBox,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    //Rachelscreen.icon,
                    MdiIcons.alphaRBox,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  icon: Icon(
                    //JoeyScreen.icon,
                    MdiIcons.alphaJBox,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: const [
              Chandlerscreen(),
              Monicascreen(),
              Rossscreen(),
              Phoebescreen(),
              Rachelscreen(),
              Joeyscreen(),
            ],
          ),
        ),
      ),
    );
  }
}
