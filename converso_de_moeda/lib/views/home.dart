import 'package:flutter/material.dart';
//import 'package:async/async.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'menu.dart';

const request = 'https://api.hgbrasil.com/finance?key=02726443';

Future<Map> getData() async {
  http.Response response = await http.get(request);
  return jsonDecode(response.body);
}

class Home extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  double dolar;
  double euro;

  final realController = TextEditingController();
  final dolarController = TextEditingController();
  final euroController = TextEditingController();

  // void _realChanged(String text) {}
  // void _dolarChanged(String text) {}
  // void _euroChanged(String text) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
              return Center(
                child: Text("Carregando"),
              );

            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Erro ao carregar"),
                );
              } else {
                dolar = snapshot.data['results']['currencies']['USD']['buy'];
                euro = snapshot.data['results']['currencies']['EUR']['buy'];

                return Menu();
              }
          }
        },
      ),
    );
  }
}
