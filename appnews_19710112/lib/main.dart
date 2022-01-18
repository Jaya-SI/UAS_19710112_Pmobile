import 'package:flutter/material.dart';
import 'package:appnews_19710112/splash.dart';
import 'package:appnews_19710112/components/customListTile.dart';
import 'package:appnews_19710112/model/article_model.dart';
import 'package:appnews_19710112/services/api_service.dart';
import 'package:appnews_19710112/services/navigation.dart';
import 'package:appnews_19710112/profile/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'HalamanPertama': (BuildContext context) => new HalamanPertama(),
        'bisnis': (BuildContext context) => new HomePage2(),
        'olahraga': (BuildContext context) => new HomePage3(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}

class HomePage2 extends StatefulWidget {
  @override
  berita_bisnis createState() => berita_bisnis();
}

class HomePage3 extends StatefulWidget {
  @override
  berita_olahraga createState() => berita_olahraga();
}

class berita_bisnis extends State<HomePage2> {
  ApiService_bisnis client = ApiService_bisnis();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              Text("Berita Kesehatan", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlueAccent),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class berita_olahraga extends State<HomePage3> {
  ApiService_sport client = ApiService_sport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Berita Olahraga", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.lightBlueAccent),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
