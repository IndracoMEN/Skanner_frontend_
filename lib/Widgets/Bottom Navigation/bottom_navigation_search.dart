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
              elevation: 5,
              title: Text(
                "Documentoss",
                style: TextStyle(color: Colors.blueAccent.shade700),
              ),
              backgroundColor: Colors.grey.shade50),
          body: ListView(
            children: [
              //definir los atributos de los objetos de la clase inkwell
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
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: InkWell(
        hoverColor: Colors.black,
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Skanner()));
        },
        child: Container(
          height: 120,
          width: double.infinity,
          color: myColors[index],
        ),
      ),
    );
  }
}
