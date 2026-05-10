import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../widgets/status_hud.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Tela principal do jogo, onde o mapa e a interface de status são exibidos.
      body: Stack(  // Usamos Stack para sobrepor o mapa com a interface de status e botões.
        children: [ // O mapa ocupa toda a tela, e os outros elementos ficam sobrepostos a ele.
          // MAPA BASE
          FlutterMap( // Usamos o FlutterMap para exibir um mapa interativo.
            options: MapOptions( // Configurações iniciais do mapa, como centro e zoom.
              center: LatLng(-23.5505, -46.6333), // Coordenada de SP como exemplo
              zoom: 17.0,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer( // Exemplo de marcador para representar o jogador ou um ambiente.
                markers: [ // Em um cenário real, os marcadores seriam dinâmicos, baseados na localização do jogador e dos ambientes.
                  Marker( //  Marcador do jogador, posicionado na coordenada de SP.
                    point: LatLng(-23.5505, -46.6333), // Coordenada do jogador
                    width: 50, // Largura do ícone do jogador
                    height: 50, // Altura do ícone do jogador
                    builder: (ctx) => Icon(Icons.person_pin_circle, color: Colors.blue, size: 45), // Ícone do jogador
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