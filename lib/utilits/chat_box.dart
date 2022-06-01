import 'package:flutter/material.dart';

class ChatBOx extends StatelessWidget {
  final boxColor;
  final chatTime;
  final String text;
  
  // final double bottomRight;
  // final double bottomLeft;
  const ChatBOx({
    Key? key,
    required this.boxColor,
    required this.chatTime,
    required this.text,
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

    //box size dynamic
    final double textSize = (_textSize(text, 18.0, FontWeight.w500) +
        _textSize(chatTime, 16.0, FontWeight.w400));

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: textSize + 50,
        padding: const EdgeInsets.all(20),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 10),
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

  double _textSize(String txt, double fontSize, FontWeight? fontWeight) {
    final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: txt,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
        maxLines: 3,
        textDirection: TextDirection.ltr)
      ..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size.width;
  }
}
