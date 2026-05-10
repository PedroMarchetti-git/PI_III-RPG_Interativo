import 'package:flutter/material.dart';

class ClueCard extends StatelessWidget {
  final String clue;

  const ClueCard({
    super.key,
    required this.clue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      color: Colors.indigo.shade50,
      child: ListTile(
        leading: const Icon(Icons.search, color: Colors.indigo),
        title: Text(
          clue,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        trailing: const Icon(Icons.check_circle_outline, color: Colors.green),
      ),
    );
  }
}