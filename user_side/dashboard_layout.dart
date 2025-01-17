import 'package:e_handbook/user_side/constant.dart';
import 'package:flutter/material.dart';

class DashboardLayout extends StatefulWidget {
  const DashboardLayout({super.key});

  @override
  State<DashboardLayout> createState() => _DashboardLayoutState();
}

class _DashboardLayoutState extends State<DashboardLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('DASHBOARD'),
              Row(
                children: [
                  Expanded(
                      child: Card(
                        child: Container(
                          height: 150.0,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Text('OFFENSE COUNT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0,
                                ),)
                              ],
                            ),
                          ),
                        ),
                      ),
                  ),
              SizedBox(width: 16.0,),
              Expanded(
                child: Card(
                  child: Container(
                    height: 150.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('CONTENT PROGRESS',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
                ],
              ),

              SizedBox(width: 16.0,),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        height: 150.0,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text('REPORTS',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              SizedBox(width: 16.0,),
              Expanded(
                child: Card(
                  child: Container(
                    height: 150.0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text('PRIVATE MESSAGES',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.black,)
            ],
          ),
      ),

    );
  }
}

