import 'package:flutter/material.dart';

class BibliotecaScreen extends StatelessWidget {
  const BibliotecaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biblioteca'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Você está na Biblioteca!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Text('Um lugar silencioso, cheio de livros e conhecimento. O que você vai fazer aqui?', textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}