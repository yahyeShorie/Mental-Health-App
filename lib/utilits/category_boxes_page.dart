import 'package:flutter/material.dart';

class CategoryBoxes extends StatelessWidget {
  final String categoryName;
  final Color boxColor;
  const CategoryBoxes(
      {Key? key, required this.categoryName, required this.boxColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: w * 0.42,
        height: h * 0.1,
        // padding: const EdgeInsets.all(26),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              categoryName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
