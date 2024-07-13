import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

TextEditingController _EmailController = TextEditingController();
TextEditingController _PassController = TextEditingController();
bool isChecked = false;
String n = "A";
String p = "2";

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 40, top: 100, right: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 700,
                      width: MediaQuery.of(context).size.width - 200,
                      margin: EdgeInsets.only(left: 60),
                      child: Image.network("https://i.pinimg.com/originals/06/df/a9/06dfa9d6eedb6ab5ab077fe108cefa81.jpg"),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 126, top: 30, right: 20),
                    child: Text(
                      "Bienveune",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Color.fromARGB(255, 27, 101, 150)),
                    )),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 20, right: 50),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 27, 101, 150),
                    controller: _EmailController,
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 27, 101, 150),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 27, 101, 150))),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 27, 101, 150),
                    controller: _PassController,
                    obscureText: !isChecked,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 27, 101, 150),
                      ),
                      labelText: 'password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 27, 101, 150))),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80, top: 10, right: 7),
                      child: Transform.scale(
                        scale: 1.2,
                        child: Checkbox(
                          checkColor: Colors.white,
                          activeColor: Color.fromARGB(255, 27, 101, 150),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10, right: 20),
                        child: Text(
                          "Afficher le mot de pass",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 27, 101, 150)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 100, bottom: 20, right: 20),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          color: Color.fromARGB(255, 27, 101, 150),
                        ),
                        height: 55,
                        width: MediaQuery.of(context).size.width - 200,
                        alignment: Alignment.center,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 100, bottom: 20, right: 20),
                    child: InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(70)),
                          color: Color.fromARGB(255, 27, 101, 150),
                        ),
                        height: 55,
                        width: MediaQuery.of(context).size.width - 200,
                        alignment: Alignment.center,
                        child: Text(
                          "SIGNUP",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    )),
              ]),
        ));
  }

 
  }


