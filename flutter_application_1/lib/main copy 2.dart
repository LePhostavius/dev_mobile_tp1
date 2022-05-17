

import 'package:flutter/material.dart';

void main() {
  runApp(ConvertisseurDeMesures());
}



class ConvertisseurDeMesures extends StatefulWidget {
  @override
  State<ConvertisseurDeMesures> createState() => _ConvertisseurDeMesuresState();
}

class _ConvertisseurDeMesuresState extends State<ConvertisseurDeMesures> {
@override
Widget build(BuildContext context) {
const appTitle = 'Convertisseur de test git';
return MaterialApp(
title: appTitle,
home: Scaffold(
appBar: AppBar(
title: Text(appTitle),
),
body : Center(child: MesWidgets()
),
));
}
}


class MesWidgets extends StatefulWidget {
@override
MesWidgetsState createState() {
return MesWidgetsState();
}
}

class MesWidgetsState extends State<MesWidgets>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
}


