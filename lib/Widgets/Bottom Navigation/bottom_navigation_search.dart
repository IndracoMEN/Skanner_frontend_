import 'package:flutter/material.dart';
import 'package:skanner_frontend/main.dart';

//DOCUMENTOS

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              leading: Builder(builder: (context) {
                return IconButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Skanner())),
                    icon: Icon(Icons.arrow_back_ios_new_outlined,
                        color: Colors.blueAccent.shade400));
              }),
              centerTitle: true,
              elevation: 0,
              title: Text(
                "Mis documentos",
                style: TextStyle(color: Colors.blueAccent.shade700),
              ),
              backgroundColor: Colors.grey.shade50),
          body: ListView(
            children: [
              //definir los atributos de los objetos de la clase inkwell
              SizedBox(height: 20),
              inkwell_example(),
              SizedBox(height: 20),
              inkwell_example(),
              SizedBox(height: 20),
              inkwell_example(),
              SizedBox(height: 20),
              inkwell_example(),
              SizedBox(height: 20),
              inkwell_example(),
              SizedBox(height: 20),
            ],
          )),
    );
  }
}

class inkwell_example extends StatefulWidget {
  const inkwell_example({
    Key? key,
  }) : super(key: key);

  @override
  State<inkwell_example> createState() => _inkwell_exampleState();
}

class _inkwell_exampleState extends State<inkwell_example> {
  int index = 0;
  List<Color> myColors = [
    Colors.green,
    Colors.black,
    Colors.red,
    Colors.yellow,
    Colors.pink
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: InkWell(
          hoverColor: Colors.black,
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Skanner()));
          },
          child: Container(
            height: 170,
            width: double.infinity,
            //color: myColors[index],
            child: Row(
              children: [
                Container(
                  height: double.maxFinite,
                  width: 120,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "PDF",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                    height: 120,
                    width: 200,
                    //color: Colors.yellow,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, right: 8, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Fundamentos de programacion\n"),
                              Text("126 MB\n"),
                              Text("12-Dic-2022   17:34 PM")
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
