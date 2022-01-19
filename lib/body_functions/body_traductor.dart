import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body_traductor extends StatelessWidget {
  const Body_traductor({Key? key}) : super(key: key);

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
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60),
                    ),
                  ),
                ),
                Pantalla_inferior_traductor(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pantalla_inferior_traductor extends StatelessWidget {
  const Pantalla_inferior_traductor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Traduce los archivos de tu dispositivo",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Traductor",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              SizedBox(width: 160),
              Expanded(
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2016/10/18/20/18/international-1751293_960_720.png",
                  height: 250,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 20),
            child: Text("Traducir desde imagen de la galería",
                style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Traducir imagen".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.indigo.shade900,
            ),
          ),
          SizedBox(height: 25),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 20),
            child: Text("Traducir PDF desde archivo",
                style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Traducir PDF".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.indigo.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
