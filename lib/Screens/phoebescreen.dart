// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:friendsapp/Characters/Phoebe.dart';

const _urlgit = 'https://github.com/vipulmaheshwari11';
const _urlInstagrm = 'https://www.instagram.com/renevantcheetah/';
const _urlTwitter = 'https://twitter.com/renevantcheetah';
const _urlWeb = 'https://www.renevantcheetah.com/';

class Phoebescreen extends StatefulWidget {
  const Phoebescreen({Key? key}) : super(key: key);

  @override
  _PhoebescreenState createState() => _PhoebescreenState();
}

class _PhoebescreenState extends State<Phoebescreen> {
  int Sexcount = 0;

  List<Phoebehobbies> hobbies = [
    Phoebehobbies(hobbyname: 'Singing awful songs'),
    Phoebehobbies(hobbyname: 'Hanging out with Joey'),
  ];

  List<Phoebeskills> skills = [
    Phoebeskills(skillname: 'Teach Ross'),
    Phoebeskills(skillname: 'Sweet and natured'),
  ];

  List<Phoebelove> loves = [
    Phoebelove(lovename: 'Smelly cat'),
    Phoebelove(lovename: 'All six of them'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                        'assets/images/phoebe.png',
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
                  'Phoebe Buffay',
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
