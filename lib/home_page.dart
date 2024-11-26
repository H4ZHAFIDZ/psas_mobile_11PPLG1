import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
          backgroundImage: AssetImage('assets/robloc.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Selamat datang',
        style: TextStyle(fontSize: 28.0, color: Colors.black),
      ),
    );

    final paragraf1 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Halo, nama saya bujang saya berasal dari sana .',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final paragraf2 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Saat ini, saya adalah seorang pengusaha.',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final paragraf3 = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pernah menempuh pendidikan di SMKN 1 klaten .',
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 250, 161, 161),
          Color.fromRGBO(247, 111, 111, 1),
          Color.fromRGBO(248, 29, 29, 1),
        ]),
      ),
      child: Column(
        children: <Widget>[profil, welcome, paragraf1, paragraf2, paragraf3],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
