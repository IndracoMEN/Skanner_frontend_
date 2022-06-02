import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_edit.dart';
import 'package:skanner_frontend/main.dart';

class Editar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Traductor ",
      home: Editar_function(),
    );
  }
}

class Editar_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade800,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade800,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Skanner()));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: const Body_Edicion(),
    );
  }
}
