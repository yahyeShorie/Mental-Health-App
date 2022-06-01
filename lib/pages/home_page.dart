import 'package:flutter/material.dart';
import 'package:mentalhealth_app/navigationBar/bottom_navigation_bar.dart';
import 'package:mentalhealth_app/utilits/emoj_icon_face.dart';
import 'package:mentalhealth_app/utilits/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      // bottomNavigationBar: const BottomNavigationBarPage(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Greating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Text: Hi Jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, Jared!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "23 Jan 2021",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      //Notification
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  //Search Bar
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  //How do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  //emoji feeling
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: const [
                          EmojIconFace(emojiface: '😠'),
                          SizedBox(height: 8),
                          Text(
                            "Bad",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //fine
                      Column(
                        children: const [
                          EmojIconFace(emojiface: '🙂'),
                          SizedBox(height: 8),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //well
                      Column(
                        children: const [
                          EmojIconFace(emojiface: '🤗'),
                          SizedBox(height: 8),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      //excellent
                      Column(
                        children: const [
                          EmojIconFace(emojiface: '🥰'),
                          SizedBox(height: 8),
                          Text(
                            "Excellent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      //Exercises Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Exercises",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 20),

                      //Listview of Exercises
                      Expanded(
                          child: ListView(
                        children: const [
                          ExerciseTIle(
                            icon: Icons.favorite,
                            color: Colors.orange,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: '16 Exercises',
                          ),
                          ExerciseTIle(
                            icon: Icons.person,
                            color: Colors.green,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: '8 Exercises',
                          ),
                          ExerciseTIle(
                            icon: Icons.star,
                            color: Colors.pink,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: '20 Exercises',
                          )
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
