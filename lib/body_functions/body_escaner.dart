import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body_escaner extends StatelessWidget {
  const Body_escaner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //provee el ancho y alto total
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60),
                    ),
                  ),
                ),
                Pantalla_inferior_escaner(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pantalla_inferior_escaner extends StatelessWidget {
  const Pantalla_inferior_escaner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "convierte imagenes en archivos PDF",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Escáner",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 100,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.50,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2012/04/02/16/55/adobe-24943_960_720.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 20),
            child: Text("Importar imagen desde galería",
                style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Importar".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.red.shade900,
            ),
          ),
          const SizedBox(height: 25),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 20),
            child: Text("Capturar imagen con camara",
                style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Capturar".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.red.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
