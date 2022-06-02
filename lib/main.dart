import 'package:skanner_frontend/Widgets/Bottom%20Navigation/bottom_navigation_account.dart';
import 'package:skanner_frontend/Widgets/Dashboard/dashboard.dart';

import 'package:flutter/material.dart';
import 'package:skanner_frontend/Widgets/Fancy_Bottom/fancy.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:skanner_frontend/functions/escanear.dart';
import 'package:skanner_frontend/functions/traducir.dart';
import 'package:skanner_frontend/functions/unir.dart';

import 'Widgets/Drawer/my_drawer_header.dart';

import 'dart:ui';

import 'package:skanner_frontend/Widgets/Drawer/notes.dart';
import 'package:skanner_frontend/Widgets/Drawer/privacy_policy.dart';
import 'package:skanner_frontend/Widgets/Drawer/send_feedback.dart';
import 'package:skanner_frontend/Widgets/Drawer/settings.dart';
import 'package:skanner_frontend/Widgets/Drawer/compartir.dart';

void main() => runApp(const Skanner());

class Skanner extends StatelessWidget {
  const Skanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skanner UI 0.0.4',
      home: MyHomePage(title: 'Skanner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    var container;

    if (currentPage == DrawerSections.dashboard) {
      container = const DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = const CompartirPage();
    } else if (currentPage == DrawerSections.notes) {
      container = const NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = FeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(Icons.menu_outlined,
                    color: Colors.blueAccent.shade700));
          }),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Account()));
              },
              icon: Icon(
                Icons.account_circle,
                color: Colors.blueAccent.shade700,
              ),
            ),
          ],
          elevation: 0,
          title: Text(
            "Skanner",
            style: TextStyle(
              color: Colors.blueAccent.shade700,
              fontFamily: 'thin',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey.shade50),
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Column(
          children: [
            const MyHeaderDrawer(),
            MyDrawerList(),
          ],
        )),
      ),
      bottomNavigationBar: const Fancy(),
      body: container,
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_arrow,
        backgroundColor: Colors.blue.shade900,
        overlayColor: Colors.black,
        overlayOpacity: 0.4,
        spacing: 15,
        spaceBetweenChildren: 10,
        children: [
          SpeedDialChild(
              child: const Icon(Icons.file_copy_outlined),
              label: "Escanear PDF",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Escanear()));
              }),
          SpeedDialChild(
              child: const Icon(Icons.compare_arrows_outlined),
              label: "Traducir PDF",
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Traducir()));
              }),
          SpeedDialChild(
              child: const Icon(Icons.join_inner_sharp),
              label: "Unir PDF",
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Union()));
              }),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Funciones", Icons.functions_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Compartir Archivos", Icons.share_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          const Divider(),
          menuItem(3, "Notas", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          menuItem(4, "Configuraciones", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          const Divider(),
          menuItem(5, "Politica de privacidad", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(6, "Enviar Recomendaciones", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.notes;
            } else if (id == 4) {
              currentPage = DrawerSections.settings;
            } else if (id == 5) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 6) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(icon, size: 20, color: Colors.black),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  //events,
  notes,
  settings,
  //notifications,
  // ignore: constant_identifier_names
  privacy_policy,
  // ignore: constant_identifier_names
  send_feedback,
}
//account, home, nav, search, settings
