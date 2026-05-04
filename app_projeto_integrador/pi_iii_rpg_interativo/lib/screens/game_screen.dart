import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../widgets/status_hud.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // MAPA BASE
          FlutterMap(
            options: MapOptions(
              center: LatLng(-23.5505, -46.6333), // Coordenada de SP como exemplo
              zoom: 17.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(-23.5505, -46.6333),
                    width: 50,
                    height: 50,
                    builder: (ctx) => Icon(Icons.person_pin_circle, color: Colors.blue, size: 45),
                  ),
                ],
              ),
            ],
          ),

          // INTERFACE (HUD)
          Positioned(
            top: 50,
            left: 20,
            child: StatusHud(),
          ),

          // BOTÃO DE MENU/INVENTÁRIO
          Positioned(
            bottom: 30,
            right: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.amber.shade800,
              child: Icon(Icons.inventory, color: Colors.white),
              onPressed: () => print("Abrir Inventário"),
            ),
          ),
        ],
      ),
    );
  }
}