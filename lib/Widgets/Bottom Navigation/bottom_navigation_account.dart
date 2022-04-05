import 'package:flutter/material.dart';

import '../../main.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: constant_identifier_names
    const text_style = TextStyle(
      color: Colors.white,
      fontSize: 15,
    );
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Skanner())),
              icon: Icon(Icons.arrow_back_ios_new_outlined,
                  color: Colors.blueAccent.shade400));
        }),
        elevation: 0,
        backgroundColor: Colors.grey.shade900,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings_applications_outlined)),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            color: Colors.grey.shade900,
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
                      style: text_style,
                    ),
                    //this.country
                    Text(
                      "Mexico",
                      style: text_style,
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
        Container(
          color: Colors.grey.shade800,
          height: 600,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                "Iniciar sesión con:",
                style: text_style,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(width: 190),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook_outlined,
                        color: Colors.white),
                    padding: const EdgeInsets.all(5),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.email_outlined, color: Colors.white),
                      padding: const EdgeInsets.all(5)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone, color: Colors.white),
                      padding: const EdgeInsets.all(5)),
                ],
              ),
              const Divider(color: Colors.black45),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Text(
                  "Archivos".toUpperCase(),
                  style: text_style,
                  textAlign: TextAlign.start,
                ),
              ),
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
                                color: Colors.blue.shade800,
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
