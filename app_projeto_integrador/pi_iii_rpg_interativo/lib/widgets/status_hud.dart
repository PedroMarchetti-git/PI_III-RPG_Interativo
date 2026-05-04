import 'package:flutter/material.dart';

class StatusHud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 180,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.amber.shade700, width: 2),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("HERÓI LV. 01", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
          SizedBox(height: 8),
          _buildBar("HP", Colors.redAccent, 0.9),
          SizedBox(height: 6),
          _buildBar("MP", Colors.blueAccent, 0.4),
        ],
      ),
    );
  }

  Widget _buildBar(String label, Color color, double percent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label, style: TextStyle(color: Colors.white, fontSize: 10)),
            Text("${(percent * 100).toInt()}%", style: TextStyle(color: Colors.white, fontSize: 10)),
          ],
        ),
        SizedBox(height: 2),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: LinearProgressIndicator(
            value: percent,
            minHeight: 6,
            backgroundColor: Colors.grey[900],
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }
}