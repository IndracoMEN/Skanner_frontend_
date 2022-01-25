import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff2E305F), Colors.blue])),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/01/15/07/52/woman-3083390_960_720.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            "Cuenta",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text("indra.najera@gmail.com",
              style: TextStyle(color: Colors.grey[200]))
        ],
      ),
    );
  }
}
