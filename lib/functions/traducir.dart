import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_traductor.dart';
import 'package:skanner_frontend/main.dart';

class Traducir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Traductor",
      home: Translate_function(),
    );
  }
}

class Translate_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade900,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
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
      body: Body_traductor(),
    );
  }
}
