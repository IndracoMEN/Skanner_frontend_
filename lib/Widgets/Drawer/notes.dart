import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const style1 = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    final text_body =
        "Skanner, al ser una aplicacion de lanzamiento reciente puede contener errores inherentes al desarrollo reciente del mismo, sugerimos tener en cuenta los siguientes aspectos:\n"
            .toString();

    final consideration1 =
        "1. Ex labore aliquip aliqua aliquip esse id fugiat. Cupidatat nostrud mollit aute officia nisi. Ut dolor mollit fugiat nostrud cillum do. Eu ullamco do magna Lorem nostrud velit qui excepteur magna est reprehenderit aute enim veniam.\n\n"
            .toString();
    final conseration2 =
        "2. Sunt cupidatat id dolore ex consequat tempor. Eiusmod ullamco nostrud in sunt consequat cupidatat. Eu labore ex in sunt reprehenderit tempor dolore occaecat cillum ut non duis dolor nostrud. Pariatur proident non tempor sunt amet sunt magna deserunt non aliquip nulla velit. Ad aliqua occaecat aute magna aliqua. Reprehenderit deserunt labore pariatur dolore.\n\n"
            .toString();
    final consideration3 =
        "3. In officia exercitatin adipisicing elit sunt. Eu elit adipisicing veniam ex est deserunt esse culpa. Esse est nostrud consectetur ad ad do aliquip magna eiusmod mollit velit culpa ullamco. Nostrud occaecat exercitation labore minim Lorem id nisi. Ut nulla irure excepteur occaecat pariatur cupidatat."
            .toString();
    final box = SizedBox(height: 10);

    return ListView(children: [
      Center(
        child: Container(
          margin: EdgeInsets.all(10),
          height: size.height,
          width: size.width * 0.80,
          //color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              const Text(
                "Consideraciones de uso",
                style: style1,
              ),
              box,
              Text(text_body),
              Divider(color: Colors.amber.shade900),
              Text(consideration1),
              Divider(color: Colors.green.shade900),
              Text(conseration2),
              Divider(color: Colors.red.shade900),
              Text(consideration3),
            ],
          ),
        ),
      ),
    ]);
  }
}
