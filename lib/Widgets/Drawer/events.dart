import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final style = TextStyle(fontSize: 62, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Text(
        "Eventos",
      )),
    );
  }
}
