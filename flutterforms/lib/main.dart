import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _infoText = "Informe seus dados!";

  void _resetFields() {
    firstController.text = "";
    secondController.text = "";
    setState(() {
      _infoText = "Informe seus dados!";
      _formKey = GlobalKey<FormState>();
    });
  }

  void _submit() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Icon(Icons.laptop_mac,
                    size: 120.0, color: Colors.lightBlueAccent),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Campo 01",
                    labelStyle: TextStyle(color: Colors.lightBlueAccent)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
                controller: firstController,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Por favor, complete.";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Campo 02",
                    labelStyle: TextStyle(color: Colors.lightBlueAccent)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
                controller: secondController,
                // ignore: missing_return
                validator: (value) {
                  if (value.isEmpty) {
                    return "Por favor, complete.";
                  }
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Campo 03",
                    labelStyle: TextStyle(color: Colors.lightBlueAccent)),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Por favor, complete.";
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 10.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        _submit();
                      }
                    },
                    child: Text(
                      "Enviar",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0),
              child:  Text(
                _infoText,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25.0),
              )
                ,)
            ],
          ),
        ),
      ),
    );
  }
}
