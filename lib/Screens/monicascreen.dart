// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:friendsapp/Characters/Monica.dart';

const _urlgit = 'https://github.com/vipulmaheshwari11';
const _urlInstagrm = 'https://www.instagram.com/renevantcheetah/';
const _urlTwitter = 'https://twitter.com/renevantcheetah';
const _urlWeb = 'https://www.renevantcheetah.com/';

class Monicascreen extends StatefulWidget {
  const Monicascreen({Key? key}) : super(key: key);

  @override
  _MonicascreenState createState() => _MonicascreenState();
}

class _MonicascreenState extends State<Monicascreen> {
  int Sexcount = 0;

  List<Monicahobbies> hobbies = [
    Monicahobbies(hobbyname: 'Cleaning the floor'),
    Monicahobbies(hobbyname: 'Make turkey for everyone'),
    Monicahobbies(hobbyname: 'Making Rachel \'s decisions'),
  ];

  List<Monicaskills> skills = [
    Monicaskills(skillname: 'Productivity freak'),
    Monicaskills(skillname: 'Take care of Joey'),
    Monicaskills(skillname: 'Baking'),
  ];

  List<Monicalove> loves = [
    Monicalove(lovename: 'Chandler'),
    Monicalove(lovename: 'Hosting parties'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 40.0, .0, 0.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    CircleAvatar(
                      //A avatar image
                      backgroundImage: AssetImage(
                        'assets/images/monica.png',
                      ),
                      foregroundImage: AssetImage(
                        'assets/images/monica.png',
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(width: 20.0),
                    IconButton(
                      onPressed: _launchURLWebsite,
                      icon: Icon(MdiIcons.web),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: _launchURLGithub,
                      icon: Icon(MdiIcons.github),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: _launchURLInstagram,
                      icon: Icon(MdiIcons.instagram),
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    IconButton(
                      onPressed: _launchURLTwitter,
                      icon: Icon(MdiIcons.twitter),
                      color: Colors.white,
                    ),
                  ],
                ),
                const Divider(
                  height: 50.0,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Monica Geller',
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Skills',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: skills
                      .map(
                        (skill) => Text(
                          skill.skillname,
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 25.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Hobbies',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: hobbies
                      .map(
                        (hobby) => Text(
                          hobby.hobbyname,
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 25.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Love',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: loves
                      .map(
                        (love) => Text(
                          love.lovename,
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 25.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _launchURLInstagram() async => await canLaunch(_urlInstagrm)
    ? await launch(_urlInstagrm)
    : throw 'Could not launch $_urlInstagrm';

void _launchURLTwitter() async => await canLaunch(_urlTwitter)
    ? await launch(_urlTwitter)
    : throw 'Could not launch $_urlTwitter';

void _launchURLWebsite() async => await canLaunch(_urlWeb)
    ? await launch(_urlWeb)
    : throw 'Could not launch $_urlWeb';

void _launchURLGithub() async => await canLaunch(_urlgit)
    ? await launch(_urlgit)
    : throw 'Could not launch $_urlgit';
