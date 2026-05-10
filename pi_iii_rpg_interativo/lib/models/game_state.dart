import 'package:flutter/material.dart';

class GameState extends ChangeNotifier {
  final Set<String> _visitedLocations = {};
  final Set<String> _collectedTokens = {};
  final Set<String> _discoveredClues = {};
  final Set<String> _completedInteractions = {};

  // Getters para verificar o estado
  bool hasVisited(String locationId) => _visitedLocations.contains(locationId);
  bool hasToken(String tokenId) => _collectedTokens.contains(tokenId);
  bool hasClue(String clueId) => _discoveredClues.contains(clueId);
  bool isInteractionDone(String interactionId) => _completedInteractions.contains(interactionId);

  // Métodos para modificar o estado e notificar a interface
  void visitLocation(String locationId) {
    if (_visitedLocations.add(locationId)) {
      notifyListeners();
    }
  }

  void obtainToken(String tokenId) {
    if (_collectedTokens.add(tokenId)) {
      notifyListeners();
    }
  }

  bool addClue(String clueId) {
    if (_discoveredClues.add(clueId)) {
      notifyListeners();
      return true;
    }
    return false;
  }

  void completeInteraction(String interactionId) {
    if (_completedInteractions.add(interactionId)) {
      notifyListeners();
    }
  }

  List<String> get allClues => _discoveredClues.toList();
}