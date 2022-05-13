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
   return MaterialApp(
     title: 'Convertisseur de mesures',
     home: Scaffold(
       appBar: AppBar(
         title : Text('Convertissez !'),
       ),
       body : Center(
         child: DecoratedBox(
           decoration:  BoxDecoration(color: Colors.orangeAccent),
          child : TextField(),
         ),
       ),
     ), 
   );
  } 
}

