// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import '../components/reproduce_bar.dart';

class PantallaPrincipal extends StatefulWidget {
  PantallaPrincipal({Key? key}) : super(key: key);

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                Color.fromARGB(255, 95, 221, 119),
                Color.fromARGB(255, 10, 159, 126),
                Color.fromARGB(255, 10, 159, 126),
                Color.fromARGB(255, 95, 221, 119),
              ],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight)),
          child: Container(
            margin: EdgeInsets.fromLTRB(45, 50, 45, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //NOMBRE APP
                Text(
                  'CANCIÓN O ARTISTA',
                  style: TextStyle(
                    fontFamily: 'Komika',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                //CAJA BUSQUEDA
                TextField(
                    keyboardType: TextInputType.text,
                    // obscureText: false,

                    //alineación del texto y estilo al escribir
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Dustismo',
                      fontSize: 15,
                    ),

                    //cursos
                    cursorColor: Colors.black87,

                    //decoracion de la caja
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255),
                              width: 3)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 238, 238, 238),
                              width: 3)),
                      hintText: 'Buscar...',
                      hintStyle: TextStyle(
                        color: Colors.black87,
                        fontFamily: 'Dustismo',
                        fontSize: 15,
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 215, 250, 245),
                      //contentPadding: EdgeInsets.all(15),
                    )),
                //BOTON ACCEDER
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color.fromARGB(255, 5, 93, 74),
                    padding: EdgeInsets.symmetric(horizontal: 41, vertical: 20),
                  ),
                  child: const Text(
                    'Buscar',
                    style: TextStyle(
                      fontFamily: 'Dustismo',
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    print('Busqueda on');
                    Navigator.of(context)
                        .pushNamed('/pantalla_principal/busqueda');
                  },
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FloatingActionButton(
                      heroTag: 'heroTag1',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('/pantalla_principal/descargas');
                      },
                      child: Icon(
                        Icons.download,
                        color: Colors.amber[600],
                      ),
                      backgroundColor: Colors.white,
                    ),
                    FloatingActionButton(
                      heroTag: 'heroTag2',
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('/pantalla_principal/historial');
                      },
                      child: Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BarraReproduccion());
  }
}
