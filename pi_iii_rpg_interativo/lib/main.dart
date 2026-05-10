import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/game_state.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => GameState(),
      child: const RpgMobileApp(),
    ),
  );
}

/// Widget raiz do aplicativo. Define tema e a tela inicial.
class RpgMobileApp extends StatelessWidget {
  const RpgMobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPG Mobile 2026',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      debugShowMaterialGrid: false,
    );
  }
}