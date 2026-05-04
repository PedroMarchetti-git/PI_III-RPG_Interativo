import 'package:flutter/material.dart';
import 'screens/start_screen.dart'; // Importa a nova tela

void main() {
  runApp(MapRPGApp());
}

class MapRPGApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Map RPG UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        fontFamily: 'Georgia', // Dá um ar mais clássico/RPG
      ),
      home: StartScreen(), // Agora começa pela tela de início
    );
  }
}