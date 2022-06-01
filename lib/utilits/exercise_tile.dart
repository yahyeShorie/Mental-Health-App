import 'package:flutter/material.dart';

class ExerciseTIle extends StatelessWidget {
  final icon;
  final Color color;
  final String exerciseName;
  final String numberOfExercises;
  const ExerciseTIle(
      {Key? key,
      required this.icon,
      required this.color,
      required this.exerciseName,
      required this.numberOfExercises})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: color,
                    padding: const EdgeInsets.all(16),
                    child: Icon(icon),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Title
                    Text(
                      exerciseName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    //subtitle
                    Text(
                      numberOfExercises,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
