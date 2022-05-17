
import 'package:flutter/material.dart';


void main() {
  runApp(ConvertisseurDeMesures());
}

class ConvertisseurDeMesures extends StatefulWidget{
  @override
  State<ConvertisseurDeMesures> createState() => _ConvertisseurDeMesuresState();
}

void initState()
{
  double _nombreSaisi = 0.0;
}

class _ConvertisseurDeMesuresState extends State<ConvertisseurDeMesures> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Convertisseur de',
      home: Scaffold(
        appBar: AppBar(title: const Text('Convertisseur de mesures')),
        body: Container(
          padding : EdgeInsets.symmetric(horizontal: 20),
          child : Column(
            children: [Spacer(),v_a_c(),Spacer(),DataToConvert(),Spacer(),depuis(),unite_depart(),Spacer(),vers()],
          )
        )
      ));}
}


class DataToConvert extends StatefulWidget {
  @override
  State<DataToConvert> createState() => _DataToConvertState();
}

class _DataToConvertState extends State<DataToConvert> {
  @override
  Widget build(BuildContext context){
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Entrer la valeur à convertir',
      ),
    );
  }
}


class unite_depart extends StatefulWidget {


  @override
  State<unite_depart> createState() => _unite_departState();
}

class _unite_departState extends State<unite_depart> {

String _uniteDepart = "";
 
 final List<String> _unitesMesures = [
    'mètres',
    'kilomètres',
    'grammes',
    'kilogrammes',
    'pieds',
    'miles',
    'livres',
    'onces'
  ];

  @override
  void initState()
  {
    _uniteDepart = _unitesMesures.first;
  }

  DropdownMenuItem<String> buildMenuItem(String item)=>  DropdownMenuItem(
  value: item,
  child:Text(item,style:TextStyle(fontWeight: FontWeight.bold,fontSize:20),)
);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(value: _uniteDepart,items: _unitesMesures.map(buildMenuItem).toList(),
     onChanged: (value) => setState(((() => this._uniteDepart = value!))));
     
  }
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


