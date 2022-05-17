
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
        body: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              v_a_c(),
              Padding(padding: EdgeInsets.all(10.0)),
              depuis(),
              Padding(padding: EdgeInsets.all(10.0)),
              vers()
            ],
          ),)
        )
    );
  }
}



class v_a_c extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'valeur à convertir',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 17,
        fontWeight: FontWeight.w500
       ),
    );
  }
} 

class depuis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'depuis',
      style: TextStyle(
        color: Colors.orange,
        fontSize: 15,
        fontWeight: FontWeight.w500
       ),
    );
  }
}

class vers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'vers',
      style: TextStyle(
        color: Colors.orange,
        fontSize: 15,
        fontWeight: FontWeight.w500
       ),
    );
  }
}