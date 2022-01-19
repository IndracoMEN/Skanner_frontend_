import 'package:flutter/material.dart';
import 'package:skanner_frontend/body_functions/body_unir.dart';

class Union extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Unir",
      home: Union_function(),
    );
  }
}

class Union_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange.shade900,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange.shade900,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Body_union(),
    );
  }
}
