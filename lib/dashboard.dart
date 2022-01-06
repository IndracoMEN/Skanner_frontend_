import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            SizedBox(height: 30),
            Material(
              elevation: 8.0,
              borderRadius: BorderRadius.circular(8.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/12/10/10/21/earth-3866609_960_720.jpg",
                      ),
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                      child: Center(
                        child: Text(
                          "Traducir",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Material(
              elevation: 8.0,
              borderRadius: BorderRadius.circular(8.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/09/28/21/56/print-2797178_960_720.jpg",
                      ),
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                      child: Center(
                        child: Text(
                          "Escanear",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Material(
              elevation: 8.0,
              borderRadius: BorderRadius.circular(8.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/10/07/12/35/puzzle-1721464_960_720.jpg",
                      ),
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                      child: Center(
                        child: Text(
                          "Unir",
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Material(
              elevation: 8.0,
              borderRadius: BorderRadius.circular(8.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/11/15/09/15/documents-3816835_960_720.jpg",
                      ),
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                      child: Center(
                        child: Text(
                          "Convertir",
                          style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Material(
              elevation: 8.0,
              borderRadius: BorderRadius.circular(8.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                splashColor: Colors.black26,
                onTap: () {},
                child: Column(
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/03/26/13/09/cup-of-coffee-1280537_960_720.jpg",
                      ),
                      height: 200,
                      width: 400,
                      fit: BoxFit.cover,
                      child: Center(
                        child: Text(
                          "Editar",
                          style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}

//escanear(ok), convertir(ok), compartir, editar, unir(ok), firmar, traducir(ok) y guardar 