import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xff2E305F), Colors.blue])),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 90,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("lib/assets/sk_drawer.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Text(
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
