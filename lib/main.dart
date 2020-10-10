//Code By: Barriga, Hosea M.
//Activity #1

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.indigo[700],
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(child: loginScreenBody()),
          ),
        ),
      ),
    );
  }
}

Column loginScreenBody() {
  return Column(
    children: [
      avatar(),
      username(),
      userTitle(),
      Form(
          child: Column(
        children: [phoneFormField(), emailFormField()],
      )),
    ],
  );
}

Container avatar() {
  return Container(
      child: ClipRRect(
    borderRadius: BorderRadius.circular(100.0),
    child: Image.asset('assets/images/avatar.jpg',
        width: 130.0, height: 130.0, fit: BoxFit.cover),
  ));
}

Container username() {
  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 20, 0.0, 5),
    child: Text('HOSEA BARRIGA',
        style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            height: 1,
            fontStyle: FontStyle.italic)),
  );
}

Container userTitle() {
  return Container(
    margin: EdgeInsets.only(bottom: 25),
    child: Text('Flutter Developer',
        style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            height: 1,
            fontStyle: FontStyle.italic)),
  );
}

Divider whiteDivider() {
  return Divider(color: Colors.white);
}

Container phoneFormField() {
  return Container(
      child: TextFormField(
    keyboardType: TextInputType.phone,
    decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: const BorderSide(color: Colors.black),
        ),
        fillColor: Colors.amber[600],
        filled: true,
        prefixIcon: Container(
          child: Icon(Icons.phone, color: Colors.black),
        ),
        labelText: "Phone Number",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
  ));
}

Container emailFormField() {
  return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: const BorderSide(color: Colors.black),
            ),
            fillColor: Colors.amber[600],
            filled: true,
            prefixIcon: Container(
              child: Icon(Icons.email, color: Colors.black),
            ),
            labelText: "Email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
      ));
}
