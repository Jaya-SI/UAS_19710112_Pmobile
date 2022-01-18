import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:appnews_19710112/main.dart';
import 'package:appnews_19710112/services/navigation.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HalamanPertama()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.subtitles,
                size: 100.0,
                color: Colors.black,
              ),
              Text(
                "News APP",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'SecularOne'),
              ),
            ],
          )
        ],
      )),
    );
  }
}
// class cardProfile extends StatelessWidget {
//   const cardProfile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//       ),
//     );
//   }
// }

