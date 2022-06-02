import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_convertir.dart';
import 'package:skanner_frontend/main.dart';

class Convertir extends StatelessWidget {
  const Convertir({Key? key}) : super(key: key);

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
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Skanner()));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: const Body_convertir(),
    );
  }
}
