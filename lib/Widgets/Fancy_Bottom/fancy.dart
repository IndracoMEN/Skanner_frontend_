import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';

import 'package:skanner_frontend/Widgets/Dashboard/dashboard.dart';
import 'package:skanner_frontend/functions/convertir.dart';
import 'package:skanner_frontend/functions/editar.dart';
import 'package:skanner_frontend/functions/traducir.dart';

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
        print(index);

        if (index == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashboardPage()));
        } else if (index == 1) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Traducir()));
        } else if (index == 2) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Convertir()));
        } else if (index == 3) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Editar()));
        }
      },
    );
  }
}
