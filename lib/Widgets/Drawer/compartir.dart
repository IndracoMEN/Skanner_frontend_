import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:skanner_frontend/main.dart';
import 'package:share_plus/share_plus.dart';

class CompartirPage extends StatefulWidget {
  const CompartirPage({Key? key}) : super(key: key);

  @override
  State<CompartirPage> createState() => _CompartirPageState();
}

class _CompartirPageState extends State<CompartirPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //mediaQuery es un widget que facilita la informacion sobre el dispositivo sobre el cual se esta corriendo la app
    //dimensiones, orientación, etc.
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.50,
          child: Swiper(
            itemCount: 10,
            layout: SwiperLayout.STACK,
            itemWidth: size.width * 0.60,
            itemHeight: size.height * 0.40,
            //se va a construir de manera dinamica cuando se requiera construir ese widget
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Skanner())),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const FadeInImage(
                    placeholder: NetworkImage(
                      "https://c.tenor.com/YAs3DgW0dbMAAAAC/loading-loader.gif",
                    ),
                    image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2017/03/08/21/20/pdf-2127829_960_720.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          height: 15,
          width: double.infinity,
          //no es constante, modificar segun el listado de archicvos de cada dispositivo
          child: const Text(
            "Tarea Fluidos de perforacion",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 25),
        ElevatedButton(
          onPressed: () async {
            final link_prueba =
                "https://es.cointelegraph.com/news/vitalik-buterin-is-worried-about-ethereum-here-s-how-the-community-responds";
            await Share.share("Comparte con tus amigos :D\n\n$link_prueba");
          },
          child: const Text(
            "Compartir este archivo",
            style: TextStyle(fontSize: 22),
          ),
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary: Colors.blue.shade900,
          ),
        )
      ],
    );
  }
}
