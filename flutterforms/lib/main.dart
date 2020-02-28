import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "FormsApp", home: Home()));
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

Widget appBody() {
  return Scaffold(
      appBar: AppBar(
        title: Text("Formulário:"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Icon(Icons.laptop_mac, size: 120.0, color: Colors.blue),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Número 01:",
                labelStyle: TextStyle(color: Colors.blue, fontSize: 25.0),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Número 02:",
                labelStyle: TextStyle(color: Colors.blue, fontSize: 25.0),
              ),
            ),
            Container(
                height: 100.0,
                padding: EdgeInsets.only(top: 50.0),
                child: RaisedButton(
                  child: Text(
                    "Buton",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {},
                )),
            Padding(
                padding: EdgeInsets.only(top: 35.0),
                child: Text(
                  "Info",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 25.0),
                ))
          ],
        ),
      ));
}
