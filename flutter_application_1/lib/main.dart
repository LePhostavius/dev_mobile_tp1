
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
),
);
}
}

