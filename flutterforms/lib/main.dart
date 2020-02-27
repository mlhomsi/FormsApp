import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main ()
{
  runApp(MaterialApp(
    title: "FormsApp",
    home: Home()
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return appBody();
  }
}

Widget appBody()
{
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário:"),
      )
    );
}