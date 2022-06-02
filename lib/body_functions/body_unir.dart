import 'package:flutter/material.dart';

class Body_union extends StatelessWidget {
  const Body_union({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                const Pantalla_inferior_union(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Pantalla_inferior_union extends StatelessWidget {
  const Pantalla_inferior_union({
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
            "Unir archivos PDF",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              "Unir/Dividir PDF",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white70, fontWeight: FontWeight.bold),
            ),
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
                  "https://cdn.pixabay.com/photo/2014/04/03/10/41/optical-illusion-311130_960_720.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25, bottom: 20),
            child: Text("Dividir archivos PDF", style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Dividir PDF".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.deepOrange.shade900,
            ),
          ),
          const SizedBox(height: 25),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(top: 15, bottom: 20),
            child: Text("Unir archivos PDF", style: TextStyle(fontSize: 15)),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Unir PDF".toUpperCase()),
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.deepOrange.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
