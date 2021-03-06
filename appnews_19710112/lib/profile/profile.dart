import 'package:flutter/material.dart';
import 'package:appnews_19710112/main.dart';

class profile extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/jaya.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Nama : Muhammad Jaya Saputra',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'NPM : 19710112',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Kelas : SI 5a REG BJM',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf4 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Kontak : 0856 - 5192 - 3925',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final paragraf5 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Alamat : Barito Kuala',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[
          profil,
          welcome,
          paragraf1,
          paragraf2,
          paragraf3,
          paragraf4,
          paragraf5
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
