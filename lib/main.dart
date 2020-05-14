import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String texto = "Pode Entrar";
  void _changePeople(int qnt){
    setState(() {
      if(qnt < 0){
        if(_people > 0){
          _people+=qnt;
          texto = "Pode Entrar";
        }else{
          texto = "Não cabe";
        }
      }else{
        _people+=qnt;
        texto = "Pode Entrar";
      }

    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "img/original.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas: $_people",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                    onPressed: () {_changePeople(1);debugPrint("+1");},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                    onPressed: () {_changePeople(-1);debugPrint("-1");},
                  ),
                ),
              ],
            ),
            Text(
              texto,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}








