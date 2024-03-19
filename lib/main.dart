import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 252, 252, 0),
      appBar: AppBar(
        title: Text(
          "LOGIN App",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color:  Colors.white, // Set 'Cdeplayon' text color to blue
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:120,bottom: 50),
              child: Text(
                "Codeplayon",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontFamily: 'Roboto' // Set 'Cdeplayon' text color to blue
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'User Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Password'),
              ),
            ),
             Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: InkWell(
                        onTap: () {
                         
                        },
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
               
            Padding(
              padding: const EdgeInsets.only(top:20),
              child: SizedBox(
                height:50,
                width: 390,
                child: Container(
                  // Set the background color of the login button to blue
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .blue, // Set the background color of the ElevatedButton to blue
                    ),
                    child: Text(
                      'Log in ',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 250, 251, 251),
                          fontSize: 20),
                    ),
                    onPressed: () {
                      print('Successfully log in ');
                    },
                  ),
                ),
              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dose not have account? '),
                  Padding(
                    padding: const EdgeInsets.only(left: 1.0),
                    child: InkWell(
                        onTap: () {
                          print('hello');
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
