import 'package:e_handbook/user_side/constant.dart';
import 'package:e_handbook/user_side/dashboard_layout.dart';
import 'package:e_handbook/user_side/handbook_layout.dart';
import 'package:e_handbook/user_side/messages_layout.dart';
import 'package:e_handbook/user_side/settings_layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: HomePage()));


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    Widget _body = DashboardLayout();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: defaultBackground,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 230,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(''),
                    radius: 45,),
                    Text(
                      'E-Student Handbook',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text(
                'DASHBOARD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _body = DashboardLayout();
                });
                },
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text(
                'STUDENT HANDBOOK',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _body = HandbookLayout();
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'MESSAGES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MessagesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.perm_device_info),
              title: Text(
                'OFFENSES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'SETTINGS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          ],
        ),
      ),
      body: _body,
    );
  }
}
