import 'package:flutter/material.dart';

import '../../main.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const text_style = TextStyle(
      color: Color.fromRGBO(21, 101, 192, 1),
      fontSize: 15,
    );
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Skanner())),
              icon: const Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.white));
        }),
        elevation: 0,
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          Container(
            height: 120,
            color: Colors.teal,
            child: Row(
              children: [
                Container(width: 10),
                const CircleAvatar(
                  backgroundImage: AssetImage("lib/assets/sk_drawer.jpg"),
                  radius: 30,
                ),
                Container(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      //this.user_name
                      "IndracoMEN",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    //this.name
                    Text(
                      "Indra Nájera",
                      style: TextStyle(color: Colors.white),
                    ),
                    //this.country
                    Text(
                      "Mexico",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          Body_account(text_style: text_style),
        ],
      ),
    );
  }
}

class Body_account extends StatelessWidget {
  const Body_account({
    Key? key,
    required this.text_style,
  }) : super(key: key);

  final TextStyle text_style;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Divider(color: Colors.black),
        Container(
          //Color.fromRGBO(226, 217, 217, 1)
          color: Colors.white,
          height: 600,
          child: Column(
            children: [
              SizedBox(
                height: 265,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Text(
                        "Documentos recientes",
                        style: text_style,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (_, int index) {
                            return Container(
                                width: 130,
                                height: 190,
                                color: Colors.teal,
                                margin: const EdgeInsets.all(20));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
