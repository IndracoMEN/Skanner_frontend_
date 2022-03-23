import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_escaner.dart';
import 'package:skanner_frontend/main.dart';

class Escanear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Escaner",
      home: Escaner_Function(),
    );
  }
}

class Escaner_Function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade900,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Skanner()));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Body_escaner(),
    );
  }
}
