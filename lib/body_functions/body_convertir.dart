import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body_convertir extends StatelessWidget {
  const Body_convertir({Key? key}) : super(key: key);

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
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      topLeft: Radius.circular(60),
                    ),
                  ),
                ),
                Pantalla_inferior_convertir(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pantalla_inferior_convertir extends StatelessWidget {
  const Pantalla_inferior_convertir({
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
            "convierte archivos a otro tipo",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Conversor",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              const SizedBox(width: 160),
              Expanded(
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2017/08/01/23/51/apple-2568755_960_720.jpg",
                  height: 200,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 20),
            child: Text("JPG a PDF", style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("convertir".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.lightGreen.shade900,
            ),
          ),
          SizedBox(height: 25),
          Divider(),
          const Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Text("PPTX a PDF", style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Capturar".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.lightGreen.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
