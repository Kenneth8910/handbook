import 'package:btech_handbook/services/auth.dart';
import 'package:flutter/material.dart';



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final AuthService _auth = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        title: Text('E-Student Handbook'),
        backgroundColor: Colors.green[200],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50,),
            Text('BALIWAG POLYTECHNIC COLLEGE',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100,),
            Container(
              height:400,
              decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  Text('Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('Login'),
                          ),
                          SizedBox(height: 10,),
                          ElevatedButton(
                            onPressed: () async {
                              dynamic result = await _auth.signInAnonymous();
                              if (result == null){
                                print('Error in logging in');
                              } else {
                                print('Signed in');
                                print(result);
                              }
                            },
                            child: const Text('Login Anonymously'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
