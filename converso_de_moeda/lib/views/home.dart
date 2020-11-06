import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('\$Converso\$'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
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
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        'counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                );
              }
          }
        },
      ),
    );
  }
}
