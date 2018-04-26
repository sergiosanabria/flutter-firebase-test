import 'package:flutter/material.dart';
import 'main.dart';

class NombrePage extends StatefulWidget {
  @override
  State createState() => new NombrePageState();
}

class NombrePageState extends State<NombrePage> {
  TextEditingController controller = new TextEditingController();
  String nombre;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('FriendlyChat'),
        ),
        /*body: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new TextField(
              controller: controller,
            ),
            new FlatButton(
              onPressed: submitNombre,
              child: new Text('Chatear'),
            )
          ], 
          
      ),*/
        body: new Center(
            child: new Column(
          children: <Widget>[
            new Row(children: <Widget>[
              new Flexible(
                  child: new TextField(
                controller: controller,
              ))
            ]),
            new Row(children: <Widget>[
              new Flexible(
                  child: new MaterialButton(
                color: Color.fromARGB(1, 3, 3, 3),
                onPressed: submitNombre,
                child: new Text('Chatear'),
              ),
              )
            ]),
          ],
        )));
  }

  void submitNombre() {
    nombre = controller.text;
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      return new ChatScreen(nombre);
    }));
  }
}
