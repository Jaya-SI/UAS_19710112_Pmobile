import 'package:flutter/material.dart';
import 'dart:async';
import 'package:appnews_19710112/main.dart';

//Membuat Halaman Crad
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pilihan Berita"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconButton(
                  icon:
                      new Icon(Icons.health_and_safety, color: Colors.black54),
                  onPressed: () {
                    Navigator.pushNamed(context, 'bisnis');
                  },
                  iconSize: 100.0,
                ),
                Text("Kesehatan")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.sports_baseball, color: Colors.black54),
                  onPressed: () {
                    Navigator.pushNamed(context, 'olahraga');
                  },
                  iconSize: 100.0,
                ),
                Text("Olahraga")
              ],
            ),
            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.person, color: Colors.black54),
                  onPressed: () {
                    Navigator.pushNamed(context, 'profile');
                  },
                  iconSize: 100.0,
                ),
                Text("Profile")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
