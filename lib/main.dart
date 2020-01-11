import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Loginpage(),
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}

class Loginpage extends StatefulWidget {
  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: new Stack(
          fit: StackFit.expand,

          children: <Widget>[
            new Image(
              image: new AssetImage("assets/images/girl.jpeg"),
              fit: BoxFit.cover,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlutterLogo(
                  size: 100.0,
                ),
                new Form(
                    child: new Theme(
                      data: new ThemeData(
                          brightness: Brightness.dark ,
                          primarySwatch: Colors.teal
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(40),
                        child: new Column(
                          children: <Widget>[
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter E-mail",
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Enter Password",
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                            ),
                            new Padding(padding: const EdgeInsets.only(top: 40.0)),
                            new MaterialButton(
                              height: 40.0,
                              minWidth: 100.0,
                              color: Colors.teal,
                                textColor: Colors.white,
                                child: new Text("Login"),
                                onPressed: (){},
                              splashColor: Colors.cyanAccent,
                                ),

                          ],
                        ),
                      ),
                    ),
                ),
              ],
            )
          ],
        ),
    );
  }
}
