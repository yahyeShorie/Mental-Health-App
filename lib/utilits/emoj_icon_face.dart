import 'package:flutter/material.dart';

class EmojIconFace extends StatelessWidget {
  final String emojiface;
  const EmojIconFace({Key? key, required this.emojiface}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          emojiface,
          style: const TextStyle(fontSize: 28),
        )));
  }
}
