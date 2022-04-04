// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import '../components/reproduce_bar.dart';

class Descargas extends StatefulWidget {
  Descargas({Key? key}) : super(key: key);

  @override
  State<Descargas> createState() => _DescargasState();
}

class _DescargasState extends State<Descargas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 95, 221, 119),
          Color.fromARGB(255, 10, 159, 126),
          Color.fromARGB(255, 10, 159, 126),
          Color.fromARGB(255, 95, 221, 119),
        ], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight)),
        child: Container(
          padding: const EdgeInsets.fromLTRB(45, 50, 45, 20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'DESCARGAS',
                  style: TextStyle(
                    fontFamily: 'Komika',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  children: generarListaAudios(),
                  shrinkWrap: true,
                ))
              ]),
        ),
      ),
      bottomNavigationBar: BarraReproduccion(),
    );
  }

  List<Widget> generarListaAudios() {
    List<Widget> audios = List.empty(growable: true);
    for (var i = 0; i < 5; i++) {
      Card tarjeta = Card(
          /* color: Color(Colors.p), */
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Icon(Icons.album, size: 50),
          ListTile(
            title: Center(
              child: Text('Audio Name'),
            ),
            subtitle: Center(
              child: Text("author's name"),
            ),
          )
        ],
      ));
      audios.add(tarjeta);
    }
    return audios;
  }
}
