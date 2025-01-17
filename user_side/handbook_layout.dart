import 'package:e_handbook/user_side/constant.dart';
import 'package:flutter/material.dart';

class HandbookLayout extends StatelessWidget {
  const HandbookLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackground,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('TABLE OF CONTENTS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  letterSpacing: 1,
                ),),
              ),
              Row(
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, '/routeName');
                        },
                        child: Card(
                          child: Container(
                            height: 70,
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text('foreword')
                                ],
                              ),
                            ),
                          ),
                      ),
                      ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      child: Container(
                        height: 70,
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text('foreword')
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
