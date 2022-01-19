import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_edit.dart';
import 'package:skanner_frontend/body_functions/body_traductor.dart';

class Editar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Traductor",
      home: Editar_function(),
    );
  }
}

class Editar_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade900,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Body_Edicion(),
    );
  }
}
