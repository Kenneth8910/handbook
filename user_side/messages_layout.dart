import 'package:e_handbook/user_side/constant.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('MESSAGES',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          letterSpacing: 1
        ),),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      labelText: 'Enter Text',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ))
                ],
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                child: Icon(Icons.person)),
            title: Text('NAME NAME NAME'),
            onTap: (){},
          ),
          ListTile(
            leading: CircleAvatar(
                child: Icon(Icons.person)),
            title: Text('NAME NAME NAME'),
          ),
          ListTile(
            leading: CircleAvatar(
                child: Icon(Icons.person)),
            title: Text('NAME NAME NAME'),
          ),
        ],
      ),
    );
  }
}
