import 'package:flutter/material.dart';
import './toktik/vide.dart';

class myapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => myapp1();
}

class myapp1 extends State<myapp> {
  @override
  int _currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
/*       backgroundColor: Colors.black, */
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 0, 11, 11),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_call,
              color: Color.fromARGB(255, 152, 239, 230),
            ),
            label: "视频",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Color.fromARGB(255, 152, 239, 230),
            ),
            label: "sdf",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: Color.fromARGB(255, 152, 239, 230),
            ),
            label: "sdf",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.android,
              color: Color.fromARGB(255, 152, 239, 230),
            ),
            label: "我的",
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: homeindex[_currentIndex],
    );
  }
}

List<Widget> homeindex = [
  videpage(),
  const Text("sdf"),
  const Text("sdf"),
  const Text("sdf"),
];
