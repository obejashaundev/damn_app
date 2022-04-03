import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Historial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 223, 226, 224),
        title: Text(
          'TECMOBILE',
          style: TextStyle(
            color: Color.fromARGB(255, 6, 7, 6),
            fontSize: 15,
          ),
        ),
      ),
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
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 0.5, vertical: 23),
                child: Text(
                  'HISTORIAL',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    itemCancion(),
                    itemCancion(),
                    itemCancion(),
                    itemCancion(),
                    itemCancion(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: unused_element
  Widget itemCancion() {
    var onPressed;
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 15, 20),
      // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 2, 115, 100),
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 0.5, vertical: 6),
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: const Image(
              image: NetworkImage(
                  'https://kpopfacts.com/wp-content/uploads/2021/08/ASTRO.jpg'),
              isAntiAlias: true,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 6),
            child: const Text(
              "Artista\nNombre de la canción",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Dustismo',
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
