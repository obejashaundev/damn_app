import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Vista Registro'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(widget.title),
      ), */
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 95, 221, 119),
          Color.fromARGB(255, 10, 159, 126),
          Color.fromARGB(255, 10, 159, 126),
          Color.fromARGB(255, 95, 221, 119),
        ], begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight)),
        child: Center(
            child: Column(
          children: <Widget>[
            espaciado(50),
            titulo(),
            espaciado(30),
            correo(),
            espaciado(30),
            contrasena('Contraseña'),
            espaciado(30),
            contrasena("Confirmar contraseña"),
            espaciado(50),
            botRegistro(),
          ],
        )),
      ),
    );
  }
}

Widget titulo() {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
    child: const Text(
      'Registro',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontFamily: 'ActionMan',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
          shadows: [
            Shadow(
                blurRadius: 5.0,
                color: Color.fromARGB(165, 0, 0, 0),
                offset: Offset(5.0, 5.0))
          ]),
    ),
  );
}

Widget espaciado(double espacio) {
  return Container(
    margin: EdgeInsets.fromLTRB(50, espacio, 0, 0),
  );
}

Widget correo() {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      obscureText: false,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 3)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 238, 238, 238), width: 3)),
        filled: true,
        fillColor: Color.fromARGB(255, 215, 250, 245),
        hintText: 'Correo',
      ),
    ),
  );
}

Widget contrasena(String text) {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
    child: TextField(
      obscureText: true,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 3)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
                color: Color.fromARGB(255, 238, 238, 238), width: 3)),
        filled: true,
        fillColor: const Color.fromARGB(255, 215, 250, 245),
        hintText: text,
      ),
    ),
  );
}

Widget botRegistro() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.purple[800],
      padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 20),
    ),
    child: const Text(
      'Registrarse',
      style: TextStyle(
        fontSize: 15,
      ),
    ),
    // ignore: avoid_print
    onPressed: () => print('Registro'),
  );
}
