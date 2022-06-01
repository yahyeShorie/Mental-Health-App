import 'package:flutter/material.dart';

class DateBreak extends StatelessWidget {
  final String text;
  const DateBreak({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _line(),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.grey[600],
              ),
            ),
          ),
          _line(),
        ],
      ),
    );
  }

  _line() {
    double w = _textSize(text, 17, FontWeight.w700);
    print(w);
    return Container(
      color: Colors.grey[300],
      width: 125,
      height: 3,
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
