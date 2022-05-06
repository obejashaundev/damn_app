import 'package:flutter/material.dart';

class BarraReproduccion extends StatefulWidget {
  const BarraReproduccion({Key? key}) : super(key: key);

  @override
  State<BarraReproduccion> createState() => _BarraReproduccionState();
}

class _BarraReproduccionState extends State<BarraReproduccion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: IconButton(
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                  color: Colors.green,
                ),
                onPressed: () {},
              )),
          const Text('00:00/--:--')
        ],
      ),
    );
  }
}
