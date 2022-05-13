import 'package:flutter/material.dart';

void main() {
  runApp(ConvertisseurDeMesures());
}

class ConvertisseurDeMesures extends StatelessWidget {
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
          child : Text('Hello')
         )
       )
     ) 
   );
  } 
}
