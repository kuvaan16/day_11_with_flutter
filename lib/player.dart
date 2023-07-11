import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';

import 'data_model.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  int i = 0;
  int pos = 0;

  bool play = false;
  bool isDark = true;
  final bgdark = '#121212'.toColor();
  final bglight = '#f5f6f7'.toColor();

  final textdark = '#e2e2e2'.toColor();
  final textlight = '#9c9c9c'.toColor();

  final colorShadowDark1 = BoxShadow(
    color: Color.fromRGBO(255, 255, 255, 0.071),
    blurRadius: 10,
    offset: Offset(-3, -3),
  );
  final colorShadowDark2 = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 1),
    blurRadius: 15,
    offset: Offset(3, 3),
  );
  final colorShadowDark3 = BoxShadow(
      color: Color.fromRGBO(255, 255, 255, 0.164),
      blurRadius: 6,
      offset: Offset(-2, -2),
      blurStyle: BlurStyle.inner);
  final colorShadowDark4 = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 1),
    blurRadius: 6,
    offset: Offset(2, 2),
    blurStyle: BlurStyle.inner,
  );

  final colorShadowLight1 = BoxShadow(
    color: '#ffffff'.toColor(),
    spreadRadius: 0,
    blurRadius: 4,
    offset: Offset(-2, -4),
  );
  final colorShadowLight2 = BoxShadow(
    color: '#dfe4ea'.toColor(),
    spreadRadius: 0,
    blurRadius: 6,
    offset: Offset(2, 4),
  );
  final colorShadowLight3 = BoxShadow(
    color: Color.fromRGBO(255, 255, 255, 0.8),
    blurRadius: 6,
    offset: Offset(-2, -2),
    blurStyle: BlurStyle.inner,
  );
  final colorShadowLight4 = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.1),
    blurRadius: 6,
    offset: Offset(2, 2),
    blurStyle: BlurStyle.inner,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 50),
        color: isDark ? bgdark : bglight,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isDark ? bgdark : bglight,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        isDark ? colorShadowDark1 : colorShadowLight1,
                        isDark ? colorShadowDark2 : colorShadowLight2,
                        isDark ? colorShadowDark3 : colorShadowLight3,
                        isDark ? colorShadowDark4 : colorShadowLight4,
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Ionicons.menu,
                        color: isDark ? textdark : textlight,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Now Playing",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: isDark ? textdark : textlight,
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: isDark ? bgdark : bglight,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        isDark ? colorShadowDark1 : colorShadowLight1,
                        isDark ? colorShadowDark2 : colorShadowLight2,
                        isDark ? colorShadowDark3 : colorShadowLight3,
                        isDark ? colorShadowDark4 : colorShadowLight4,
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.solidMoon,
                        color: isDark ? textdark : textlight,
                      ),
                      onPressed: () {
                        setState(() {
                          isDark = !isDark;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: CircleAvatar(
                radius: 121,
                backgroundColor: isDark ? textdark : textlight,
                child: CircleAvatar(
                  radius: 118,
                  backgroundImage: AssetImage(Datalast[i].img),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              Datalast[i].title,
              style: TextStyle(
                color: isDark ? textdark : textlight,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              Datalast[i].desc,
              style: TextStyle(
                color: isDark ? textdark : textlight,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "00:00",
                    style: TextStyle(
                      color: isDark ? textdark : textlight,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "00:00",
                    style: TextStyle(
                      color: isDark ? textdark : textlight,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 25,
                  width: 120,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                ),
                Positioned(
                  top: 7,
                  child: Container(
                    height: 2,
                    width: 120,
                    decoration: BoxDecoration(
                      color: isDark ? textdark : textlight,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 10,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        color: isDark ? textdark : textlight,
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isDark ? bgdark : bglight,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      isDark ? colorShadowDark1 : colorShadowLight1,
                      isDark ? colorShadowDark2 : colorShadowLight2,
                      isDark ? colorShadowDark3 : colorShadowLight3,
                      isDark ? colorShadowDark4 : colorShadowLight4,
                    ],
                  ),
                  child: Icon(
                    FontAwesomeIcons.random,
                    color: isDark ? textdark : textlight,
                    size: 16,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isDark ? bgdark : bglight,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      isDark ? colorShadowDark1 : colorShadowLight1,
                      isDark ? colorShadowDark2 : colorShadowLight2,
                      isDark ? colorShadowDark3 : colorShadowLight3,
                      isDark ? colorShadowDark4 : colorShadowLight4,
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (i == 0) {
                          i = 6;
                        } else {
                          i--;
                        }
                        print(i);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.stepBackward,
                      color: isDark ? textdark : textlight,
                      size: 18,
                    ),
                  ),
                ),
                Container(
                  //padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isDark ? bgdark : bglight,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      isDark ? colorShadowDark1 : colorShadowLight1,
                      isDark ? colorShadowDark2 : colorShadowLight2,
                      isDark ? colorShadowDark3 : colorShadowLight3,
                      isDark ? colorShadowDark4 : colorShadowLight4,
                    ],
                  ),
                  child: IconButton(
                    iconSize: 50,
                    icon: Icon(
                      play ? Icons.pause_outlined : Icons.play_arrow_rounded,
                      color: isDark ? textdark : textlight,
                    ),
                    onPressed: () {
                      setState(() {
                        play = !play;
                        
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isDark ? bgdark : bglight,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      isDark ? colorShadowDark1 : colorShadowLight1,
                      isDark ? colorShadowDark2 : colorShadowLight2,
                      isDark ? colorShadowDark3 : colorShadowLight3,
                      isDark ? colorShadowDark4 : colorShadowLight4,
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.stepForward,
                      color: isDark ? textdark : textlight,
                      size: 18,
                    ),
                    onPressed: () {
                      setState(() {
                        if (i == Datalast.length - 1) {
                          i = 0;
                        } else {
                          i++;
                        }
                        print(i);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: isDark ? bgdark : bglight,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      isDark ? colorShadowDark1 : colorShadowLight1,
                      isDark ? colorShadowDark2 : colorShadowLight2,
                      isDark ? colorShadowDark3 : colorShadowLight3,
                      isDark ? colorShadowDark4 : colorShadowLight4,
                    ],
                  ),
                  child: Icon(
                    FontAwesomeIcons.circleNotch,
                    color: isDark ? textdark : textlight,
                    size: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 180,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 4,
              width: 200,
              decoration: BoxDecoration(
                  color: isDark ? textdark : textlight,
                  borderRadius: BorderRadius.circular(500)),
            )
          ],
        ),
      ),
    );
  }
}

extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
