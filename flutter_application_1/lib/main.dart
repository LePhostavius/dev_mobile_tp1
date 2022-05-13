import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ConvertisseurDeMesures());
}

class ConvertisseurDeMesures extends StatelessWidget {
@override
Widget build(BuildContext context) {
const appTitle = 'Convertisseur de mesures';
return MaterialApp(
title: appTitle,
home: Scaffold(
appBar: AppBar(
title: Text(appTitle),
),
body : MyCustomForm()
),
);
}
}


class MyCustomForm extends StatefulWidget {
@override
MyCustomFormState createState() {
return MyCustomFormState();
}
}
class MyCustomFormState extends State<MyCustomForm> {

  late String _nombreSaisi;

  @override
  void initState() {
     _nombreSaisi = "ici apparaitra votre valeur à convertir";
    // TODO: implement initState
    super.initState();
  }

  void Changement(String a)
  {
    setState(() {
      _nombreSaisi = '$a';
      print(_nombreSaisi);
    });
  }

@override
Widget build(BuildContext context) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: <Widget>[
Padding(
padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
child: TextField(
decoration: InputDecoration(
border: OutlineInputBorder(),
hintText: 'Saisir le mot recherché', 
), onChanged: Changement
),
),
Padding(
padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
child: TextFormField(
decoration: InputDecoration(
border: UnderlineInputBorder(),
labelText: '$_nombreSaisi',
),
),
),
],
);
}
}