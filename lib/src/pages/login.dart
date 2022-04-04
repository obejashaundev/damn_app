// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
        margin: const EdgeInsets.fromLTRB(45, 50, 45, 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //NOMBRE APP
            Text(
              'TECMOBILE',
              style: TextStyle(
                fontFamily: 'Komika',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            //CAJA CORREO
            TextField(
                keyboardType: TextInputType.emailAddress,
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
                          color: Color.fromARGB(255, 255, 255, 255), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 238, 238, 238), width: 3)),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Dustismo',
                    fontSize: 15,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 215, 250, 245),
                  //contentPadding: EdgeInsets.all(15),
                )),

            //CAJA PASSWORD
            TextField(
                //keyboardType: TextInputType.emailAddress,
                obscureText: true,

                //alineación del texto y estilo al escribir
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Dustismo',
                  fontSize: 15,
                ),

                //cursor
                cursorColor: Colors.black87,

                //decoracion de la caja
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255), width: 3)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 238, 238, 238), width: 3)),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Dustismo',
                    fontSize: 15,
                  ),
                  //contentPadding: EdgeInsets.all(15),
                  filled: true,
                  fillColor: Color.fromARGB(255, 215, 250, 245),
                )),

            //BOTON ACCEDER
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.pink[600],
                padding: EdgeInsets.symmetric(horizontal: 41, vertical: 20),
              ),
              child: const Text(
                'Acceder',
                style: TextStyle(
                  fontFamily: 'Dustismo',
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                print('Acceder on');
                Navigator.pushNamed(context, '/pantalla_principal');
              },
            ),

            //BOTON CREAR CUENTA
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: Colors.purple[800],
                padding: EdgeInsets.symmetric(horizontal: 27, vertical: 20),
              ),
              child: const Text(
                'Crear cuenta',
                style: TextStyle(
                  fontFamily: 'Dustismo',
                  fontSize: 15,
                ),
              ),
              onPressed: () {
                print('crear on');
                Navigator.pushNamed(context, '/registro');
              },
            )
          ],
        ),
      ),
    ));
  }
}
