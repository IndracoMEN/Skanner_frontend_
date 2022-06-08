import 'package:flutter/material.dart';
import 'package:skanner_frontend/functions/convertir.dart';
import 'package:skanner_frontend/functions/editar.dart';
import 'package:skanner_frontend/functions/unir.dart';
import '../../functions/escanear.dart';
import '../../functions/traducir.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const elevation = 8.0;
    final borderRadius = BorderRadius.circular(8.0);
    const clipBehavior = Clip.antiAliasWithSaveLayer;
    const splashColor = Colors.black26;
    const size = MainAxisSize.min;
    const style = TextStyle(fontSize: 22.0, color: Colors.white);
    const double h = 200;
    const double w = 400;
    const box = SizedBox(height: 30);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 30, bottom: 20),
              child: Text(
                "Indra, ¿Qué haremos hoy?",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueAccent.shade700,
                  fontFamily: 'serif',
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(color: Colors.red),
            const SizedBox(height: 10),
            Material(
              elevation: elevation,
              borderRadius: borderRadius,
              clipBehavior: clipBehavior,
              child: InkWell(
                splashColor: splashColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Traducir()));
                },
                child: Column(
                  mainAxisSize: size,
                  children: [
                    Ink.image(
                      image: const AssetImage(
                        "lib/assets/translate_db.png",
                      ),
                      height: h,
                      width: w,
                      fit: BoxFit.cover,
                      child: const Center(
                        child: Text("Traducir", style: style),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            box,
            Material(
              elevation: elevation,
              borderRadius: borderRadius,
              clipBehavior: clipBehavior,
              child: InkWell(
                splashColor: splashColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Escanear()));
                },
                child: Column(
                  mainAxisSize: size,
                  children: [
                    Ink.image(
                      image: const AssetImage(
                        "lib/assets/escann_db.png",
                      ),
                      height: h,
                      width: w,
                      fit: BoxFit.cover,
                      child: const Center(
                        child: Text("Escanear", style: style),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            box,
            Material(
              elevation: elevation,
              borderRadius: borderRadius,
              clipBehavior: clipBehavior,
              child: InkWell(
                splashColor: splashColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Union()));
                },
                child: Column(
                  mainAxisSize: size,
                  children: [
                    Ink.image(
                      image: const AssetImage(
                        "lib/assets/union_bd.png",
                      ),
                      height: h,
                      width: w,
                      fit: BoxFit.cover,
                      child: const Center(
                        child: Text("Unir/Dividir ", style: style),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            box,
            Material(
              elevation: elevation,
              borderRadius: borderRadius,
              clipBehavior: clipBehavior,
              child: InkWell(
                splashColor: splashColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Convertir()));
                },
                child: Column(
                  children: [
                    Ink.image(
                      image: const AssetImage(
                        "lib/assets/convert_db.jpg",
                      ),
                      height: h,
                      width: w,
                      fit: BoxFit.cover,
                      child: const Center(
                        child: Text("Convertir ", style: style),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            box,
            Material(
              elevation: elevation,
              borderRadius: borderRadius,
              clipBehavior: clipBehavior,
              child: InkWell(
                splashColor: splashColor,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Editar()));
                },
                child: Column(
                  children: [
                    Ink.image(
                      image: const AssetImage(
                        "lib/assets/edit_db.png",
                      ),
                      height: h,
                      width: w,
                      fit: BoxFit.cover,
                      child: const Center(
                        child: Text(
                          "Editar ",
                          style: style,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            box
          ],
        ),
      ),
    );
  }
}

//escanear(ok), convertir(ok), compartir, editar, unir(ok), firmar, traducir(ok) y guardar 