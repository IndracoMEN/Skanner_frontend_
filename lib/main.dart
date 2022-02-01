import 'package:skanner_frontend/Widgets/Dashboard/dashboard.dart';

import 'package:flutter/material.dart';
import 'package:skanner_frontend/Widgets/Fancy_Bottom/fancy.dart';

import 'Widgets/Drawer/my_drawer_header.dart';

import 'package:skanner_frontend/Widgets/Drawer/events.dart';
import 'package:skanner_frontend/Widgets/Drawer/notes.dart';
import 'package:skanner_frontend/Widgets/Drawer/notifications.dart';
import 'package:skanner_frontend/Widgets/Drawer/privacy_policy.dart';
import 'package:skanner_frontend/Widgets/Drawer/send_feedback.dart';
import 'package:skanner_frontend/Widgets/Drawer/settings.dart';
import 'package:skanner_frontend/Widgets/Drawer/contacts.dart';

void main() => runApp(const Skanner());

class Skanner extends StatelessWidget {
  const Skanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skanner UI 0.0.4',
      home: MyHomePage(title: 'Skanner'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

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
      container = DashboardPage();
    } else if (currentPage == DrawerSections.contacts) {
      container = CompartirPage();
    } else if (currentPage == DrawerSections.events) {
      container = EventsPage();
    } else if (currentPage == DrawerSections.notes) {
      container = NotesPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingsPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationsPage();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = PrivacyPage();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = FeedbackPage();
    }
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.blueAccent.shade400))
          ],
          elevation: 5,
          title: Text(
            "Skanner",
            style: TextStyle(color: Colors.blueAccent.shade400),
          ),
          backgroundColor: Colors.grey.shade50),
      drawer: Drawer(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        )),
      ),
      bottomNavigationBar: const Fancy(),
      body: container,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        hoverColor: Colors.cyan,
        onPressed: () {},
        tooltip: 'Nuevo Documento',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          menuItem(1, "Funciones", Icons.functions_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Compartir", Icons.share_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Eventos", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notas", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Configuraciones", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Notificacioness", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Politica de privacidad", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Enviar Recomendaciones", Icons.feedback_outlined,
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
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(icon, size: 20, color: Colors.black),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 16.0),
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
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
//account, home, nav, search, settings
