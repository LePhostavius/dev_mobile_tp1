import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(ConvertisseurDeMesures());
}

class ConvertisseurDeMesures extends StatefulWidget {
  @override
  State<ConvertisseurDeMesures> createState() => _ConvertisseurDeMesuresState();
}

class _ConvertisseurDeMesuresState extends State<ConvertisseurDeMesures> {

  double _nombreSaisi = 0.0;
  @override 
  Widget build(BuildContext context)
  {
   return Scaffold(
          appBar: AppBar(
            title: Text('Convertisseur de mesures'),
          ),
          body: Center(
          child: Column(
            children: <Widget>[
              TextField(onChanged: (value) => _nombreSaisi =  value as double, decoration: InputDecoration(
                labelText: 'valeur',
                hintText: 'Enter la valeur',
                icon: Icon(Icons.numbers,color:Colors.deepPurpleAccent),),
                keyboardType: TextInputType.number),
                Text('$_nombreSaisi')
                ]) ,)
       
   );
  } 
}

