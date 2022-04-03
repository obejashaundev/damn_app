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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: tituloBar(),
          backgroundColor: Colors.grey,
        ),
        body: degradadoContenedor());
  }
}

Widget tituloBar() {
  return const Text(
    'TECMOBILE',
    style: TextStyle(fontFamily: 'Komika', fontSize: 20),
  );
}

Widget degradadoContenedor() {
  return Container(
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
          tituloBusqueda(),
          barraBusqueda(),
          Expanded(
            child: ListView(
              children: <Widget>[
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
                itemCancion(),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget tituloBusqueda() {
  return Container(
    margin: const EdgeInsets.fromLTRB(50, 50, 50, 0),
    child: const Text(
      'Canción o Artista',
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

Widget barraBusqueda() {
  return Container(
      margin: const EdgeInsets.fromLTRB(45, 50, 45, 60),
      child: const TextField(
          decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 255, 255, 255), width: 3)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Color.fromARGB(255, 238, 238, 238), width: 3)),
        filled: true,
        fillColor: Color.fromARGB(255, 215, 250, 245),
      )));
}

Widget itemCancion() {
  var onPressed;
  return Container(
    margin: const EdgeInsets.fromLTRB(46, 0, 46, 20),
    // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    decoration: const BoxDecoration(
        color: Color.fromARGB(255, 2, 115, 100),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2))),
          child: const Image(
            image: NetworkImage(
                'https://yt3.ggpht.com/a/AATXAJx5eyl0PzfFXwGh0lyrSEd_JgUxQgjUlVcqFw=s900-c-k-c0xffffffff-no-rj-mo'),
            isAntiAlias: true,
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            "Artista\nNombre de la Canción",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Dustismo',
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 15),
          child: Row(
            children: <Widget>[
              IconButton(
                  onPressed: () => onPressed, icon: const Icon(Icons.download)),
              IconButton(
                  onPressed: () => onPressed,
                  icon: const Icon(Icons.play_arrow)),
            ],
          ),
        ),
      ],
    ),
  );
}


// Container(
//           margin: const EdgeInsets.symmetric(horizontal: 30),
//           child: const Text(
//             'Nombre canción',
//             style: TextStyle(
//                 fontFamily: 'Dustismo', fontSize: 20, color: Colors.white),
//           ),
//         ),
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 5),
//           child: IconButton(
//               onPressed: onPressed, icon: const Icon(Icons.download, size: 30)),
//         ),
//         Container(
//           margin: const EdgeInsets.symmetric(horizontal: 15),
//           child: IconButton(
//               onPressed: onPressed,
//               icon: const Icon(Icons.play_arrow, size: 30)),
//         )