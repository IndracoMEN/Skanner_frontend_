import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Body_convertir extends StatelessWidget {
  const Body_convertir({Key? key}) : super(key: key);

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
                const Pantalla_inferior_convertir(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Pantalla_inferior_convertir extends StatelessWidget {
  const Pantalla_inferior_convertir({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Convierte archivos a otro tipo.",
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
                Expanded(
                  child: Container(
                    width: 100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: Image.asset(
                    "lib/assets/convert_body.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 20),
              child: Text("JPG a PDF", style: TextStyle(fontSize: 15)),
            ),
            ElevatedButton(
              onPressed: () => showToast("Convirtiendo..."),
              child: Text(
                "convertir".toUpperCase(),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.blue.shade600,
              ),
            ),
            const SizedBox(height: 25),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 20),
              child: Text(
                "PPTX a PDF",
                style: TextStyle(fontSize: 15),
              ),
            ),
            ElevatedButton(
              onPressed: () => showToast("Capturando..."),
              child: Text(
                "Capturar".toUpperCase(),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.blue.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future showToast(String message) async {
    await Fluttertoast.cancel();

    Fluttertoast.showToast(msg: message, fontSize: 18);
  }
}
