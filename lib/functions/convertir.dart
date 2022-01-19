import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_convertir.dart';

class Convertir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Escaner",
      home: Conversion_Function(),
    );
  }
}

class Conversion_Function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade900,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade900,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Body_convertir(),
    );
  }
}
