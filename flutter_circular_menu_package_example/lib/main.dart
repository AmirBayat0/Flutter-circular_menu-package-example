import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CircularMenuScreen(),
    );
  }
}

class CircularMenuScreen extends StatefulWidget {
  @override
  State<CircularMenuScreen> createState() => _CircularMenuScreenState();
}

class _CircularMenuScreenState extends State<CircularMenuScreen> {
  Color _color = Colors.black;
  String _colorName = 'No';

/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "circular_menu Package example",
                style: TextStyle(
                    color: Color.fromARGB(153, 0, 0, 0),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "@CodeWithFlexZ",
                style: TextStyle(
                  color: Color.fromARGB(153, 144, 144, 144),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        body: CircularMenu(
          toggleButtonAnimatedIconData: AnimatedIcons.menu_close,
          curve: Curves.bounceOut,
          reverseCurve: Curves.fastOutSlowIn,
          toggleButtonOnPressed: () {
            setState(() {
              _color = Colors.black;
              _colorName = 'No';
            });
          },
          animationDuration: Duration(milliseconds: 800),
          items: [
            CircularMenuItem(
                icon: Icons.home,
                color: Colors.deepOrangeAccent,
                onTap: () {
                  setState(() {
                    _color = Colors.deepOrangeAccent;
                    _colorName = 'Orange';
                  });
                  print("Home");
                }),
            CircularMenuItem(
                icon: Icons.search,
                color: Colors.redAccent,
                onTap: () {
                  setState(() {
                    _color = Colors.redAccent;
                    _colorName = 'Red';
                  });
                  print("Search");
                }),
            CircularMenuItem(
                icon: Icons.settings,
                color: Color.fromARGB(255, 226, 226, 53),
                onTap: () {
                  setState(() {
                    _color = Color.fromARGB(255, 226, 226, 53);
                    _colorName = 'Yellow';
                  });
                  print("Settings");
                }),
            CircularMenuItem(
                icon: Icons.star,
                color: Colors.deepPurple,
                onTap: () {
                  setState(() {
                    _color = Colors.deepPurple;
                    _colorName = 'Purple';
                  });
                  print("Star");
                }),
            CircularMenuItem(
                icon: Icons.pages,
                color: Colors.pinkAccent,
                onTap: () {
                  setState(() {
                    _color = Colors.pinkAccent;
                    _colorName = 'Pink';
                  });
                  print("Pages");
                }),
          ],
          alignment: Alignment.bottomCenter,
          toggleButtonColor: Colors.deepPurpleAccent,
          backgroundWidget: Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style:
                        TextStyle(color: _color, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' button is clicked.'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
