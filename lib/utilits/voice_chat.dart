import 'package:flutter/material.dart';

class VoiceChat extends StatelessWidget {
  final boxColor;
  final chatTime;
  const VoiceChat({
    Key? key,
    required this.boxColor,
    required this.chatTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Box style dynamic
    final Color textColor;
    double bottomRight = 0.0;
    double bottomLeft = 0.0;
    (boxColor == Colors.blue[900])
        ? {textColor = Colors.white, bottomLeft = 20.0, bottomRight = 0.0}
        : {textColor = Colors.black, bottomRight = 20.0, bottomLeft = 0.0};

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20),
            topRight: const Radius.circular(20),
            bottomRight: Radius.circular(bottomRight),
            bottomLeft: Radius.circular(bottomLeft),
          ),
        ),
        child: Row(
          children: [
            //Call
            const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 35,
            ),
            const SizedBox(
              width: 10,
            ),

            //Voice Graph
            _graphPieceRepeat(),
            _graphPieceRepeat(),
            _graphPieceRepeat(),
            const SizedBox(width: 10),

            //message TIme
            Text(
              chatTime,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }

  _graphPieceRepeat() {
    return Row(
      children: [
        _graphPiece(6, 25, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
        _graphPiece(6, 12, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
        _graphPiece(6, 20, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
        _graphPiece(6, 30, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
        _graphPiece(6, 20, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
        _graphPiece(6, 30, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
        _graphPiece(6, 25, Colors.white),
        _graphPiece(4, 18, Colors.blue[900]),
      ],
    );
  }

  _graphPiece(double w, double h, color) {
    return Container(
      width: w,
      height: h,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
    );
  }
}
