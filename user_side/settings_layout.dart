import 'package:e_handbook/user_side/constant.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('SETTINGS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            ListTile(
              title: Row(
                  children: [
                    Flexible(child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Search for a setting...',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ))
                  ],
                ),
              ),
            
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Icon(Icons.person_outlined),
                  title: Text('Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey)
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Icon(Icons.notifications_none),
                  title: Text('Notifications',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey)
                )
            ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined),
                  title: Text('Appearance',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey)
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Icon(Icons.lock_outline_rounded),
                  title: Text('Privacy & Security',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey)
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: ListTile(
                  leading: Icon(Icons.help_outline_sharp),
                  title: Text('About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        backgroundColor: Colors.green,
          onPressed: (){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text('Do you want to logout?'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        child: Text('YES')
                    ),
                    TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    },
                        child: Text('NO'),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white
                      ),
                    )
                  ],
                );
              });
          },
      ),
    );
  }
}
