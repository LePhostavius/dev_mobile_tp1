import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double? _nombreSaisi;
  String? _uniteConvertion;
  String? _message;
  String? _uniteDepart;

  final TextStyle styleEntree = TextStyle(
    fontSize: 20,
    color: Colors.blue[900],
  );
  final TextStyle styleLabel = TextStyle(
    fontSize: 20,
    color: Colors.grey[700],
  );

  @override
  void initState() {
    super.initState();
    _nombreSaisi = 0.0;
    _uniteConvertion = 'mètres';
    _uniteDepart = 'mètres';
  }

  final Map<String, int> _mesuresMap = {
    'mètres': 0,
    'kilomètres': 1,
    'grammes': 2,
    'kilogrammes': 3,
    'pieds': 4,
    'miles': 5,
    'livres': 6,
    'onces': 7
  };

  final dynamic _formules = {
    '0': [1, 0.001, 0, 0, 3.28084, 0.000621371, 0, 0],
    '1': [1000, 1, 0, 0, 3280.84, 0.621371, 0, 0],
    '2': [0, 0, 1, 0.0001, 0, 0, 0.00220462, 0.035274],
    '3': [0, 0, 1000, 1, 0, 0, 2.20462, 35.274],
    '4': [0.3048, 0.0003048, 0, 0, 1, 0.000189394, 0, 0],
    '5': [1609.34, 1.60934, 0, 0, 5280, 1, 0, 0],
    '6': [0, 0, 453.592, 0.453592, 0, 0, 1, 16],
    '7': [0, 0, 28.3495, 0.0283495, 0, 0, 0.0625, 1],
  };

  void convertir(double valeur, String depuis, String vers) {
    int numDepuis = _mesuresMap[depuis] ?? 0;
    int numVers = _mesuresMap[vers] ?? 0;
    var multiplicateur = _formules[numDepuis.toString()][numVers];
    var resultat = valeur * multiplicateur;
    String message;
    if (resultat == 0) {
      message = 'Cette conversion ne peut être réalisée!!!';
    } else {
      message =
          '${valeur.toString()} $depuis\n est égal à\n${resultat.toString()} $vers';
    }
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    DropdownMenuItem<String> buildMenuItem(String item) =>
        DropdownMenuItem(value: item, child: Text(item, style: styleLabel));

    return MaterialApp(
        title: 'Entête',
        home: Scaffold(
            appBar: AppBar(title: const Text('Convertisseur de Mesures')),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text('Valeur à convertir', style: styleEntree),
                  TextField(
                    style: styleEntree,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        hintText: 'Saisissez la mesure à convertir'),
                    onChanged: (texte) {
                      var vr = double.tryParse(texte);
                      if (vr != null) {
                        setState(() {
                          _nombreSaisi = vr;
                        });
                      }
                    },
                  ),
                  Text('Depuis', style: styleLabel),
                  DropdownButton<String>(
                      value: _uniteDepart,
                      items: _mesuresMap.keys.map(buildMenuItem).toList(),
                      onChanged: (newValue) =>
                          setState((() => _uniteDepart = newValue!))),
                  Text('Vers', style: styleLabel),
                  DropdownButton<String>(
                      value: _uniteConvertion,
                      items: _mesuresMap.keys.map(buildMenuItem).toList(),
                      onChanged: (nouvelleUnite) =>
                          setState((() => _uniteConvertion = nouvelleUnite!))),
                  ElevatedButton(
                      onPressed: () {
                        if (_nombreSaisi == 0) {
                          return;
                        } else {
                          convertir(
                              _nombreSaisi!, _uniteDepart!, _uniteConvertion!);
                        }
                      },
                      child: Text(
                        'convertir',
                        style: styleEntree,
                      )),
                  Text(
                    _message ?? '',
                    textAlign: TextAlign.center,
                    style: styleLabel,
                  )
                ],
              ),
            )));
  }
}
