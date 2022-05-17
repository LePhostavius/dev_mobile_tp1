
import 'package:flutter/material.dart';


void main() {
  runApp(ConvertisseurDeMesures());
}

class ConvertisseurDeMesures extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convertisseur de',
      home: Scaffold(
        appBar: AppBar(title: const Text('Convertisseur de mesures')),
        body: Container(
          padding : EdgeInsets.symmetric(horizontal: 20),
          child : Column(
            children: [v_a_c(),depuis(),vers()],
          )
        )
      ));}
}



class v_a_c extends StatelessWidget {
  @override
   
  Widget build(BuildContext context) {
    final TextStyle styleEntree = TextStyle(
    fontSize: 20,
    color: Colors.blue[900],
    );
    return Text(
      'Valeur à convertir',
       style: styleEntree
    );
  }
}

class depuis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle styleLabel = TextStyle(
 fontSize: 20,
 color: Colors.grey[700],
 );
    return Text(
      'depuis',
      style: styleLabel
    );
  }
}

class vers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle styleLabel = TextStyle(
 fontSize: 20,
 color: Colors.grey[700],
 );
    return Text(
      'vers',
      style: styleLabel
    );
  }
}


