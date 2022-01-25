import 'package:flutter/material.dart';

import 'package:fancy_bar/fancy_bar.dart';

import 'package:skanner_frontend/Widgets/Bottom%20Navigation/bottom_navigation_account.dart';
import 'package:skanner_frontend/Widgets/Bottom%20Navigation/bottom_navigation_search.dart';
import 'package:skanner_frontend/Widgets/Bottom%20Navigation/bottom_navigation_settings.dart';
import 'package:skanner_frontend/main.dart';

class Fancy extends StatefulWidget {
  const Fancy({
    Key? key,
  }) : super(key: key);

  @override
  State<Fancy> createState() => _FancyState();
}

class _FancyState extends State<Fancy> {
  @override
  Widget build(BuildContext context) {
    return FancyBottomBar(
      items: [
        FancyItem(
          textColor: Colors.blueAccent.shade400,
          title: 'Home',
          icon: Icon(Icons.home_outlined),
        ),
        FancyItem(
          textColor: Colors.blueAccent.shade400,
          title: 'Buscar',
          icon: Icon(Icons.search),
        ),
        FancyItem(
          textColor: Colors.blueAccent.shade400,
          title: 'Cuenta',
          icon: Icon(Icons.account_circle_outlined),
        ),
        FancyItem(
          textColor: Colors.blueAccent.shade400,
          title: 'Configuraciones',
          icon: Icon(Icons.settings_outlined),
        ),
      ],
      onItemSelected: (index) {
        //home
        if (index == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        } else if (index == 1) {
          //buscar
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Search()));
        } else if (index == 2) {
          //cuenta
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Account()));
        } else if (index == 3) {
          //configuraciones
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Settings()));
        }
      },
    );
  }
}
