import 'package:flutter/material.dart';

class BarraReproduccion extends StatefulWidget {
  BarraReproduccion({Key? key}) : super(key: key);

  @override
  State<BarraReproduccion> createState() => _BarraReproduccionState();
}

class _BarraReproduccionState extends State<BarraReproduccion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
      color: Colors.grey[350],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.green,
            ),
          ),
          Text('00:00/--:--')
        ],
      ),
    );
  }
}
