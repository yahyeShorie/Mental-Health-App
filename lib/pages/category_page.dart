import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealth_app/pages/consultant_page.dart';
import 'package:mentalhealth_app/utilits/category_boxes_page.dart';
import 'package:mentalhealth_app/utilits/exercise_tile.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      // bottomNavigationBar: BottomNavigationBarPage(),
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
                ],
              ),
            ),
            const SizedBox(height: 25),

            //Category Card
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25.0),
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
                      //Category Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Category",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(height: 25),

                      //Listview of Exercises
                      Expanded(
                          child: ListView(
                        children: [
                          //Category Boxes
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CategoryBoxes(
                                categoryName: 'Relationship',
                                boxColor: Colors.greenAccent,
                              ),
                              CategoryBoxes(
                                categoryName: 'Career',
                                boxColor: Colors.blueAccent,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              CategoryBoxes(
                                categoryName: 'Education',
                                boxColor: Colors.orangeAccent,
                              ),
                              CategoryBoxes(
                                categoryName: 'Other',
                                boxColor: Colors.pinkAccent,
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),

                          //Consultant Heading
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Consultant",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          const SizedBox(height: 25),

                          //Consultant list
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const ConsultantPage());
                              // Navigator.pushNamed(
                              //       context, '/consultant');
                            },
                            child: const ExerciseTIle(
                              icon: Icons.favorite,
                              color: Colors.orange,
                              exerciseName: 'Bobby Singer',
                              numberOfExercises: 'Education',
                            ),
                          ),
                          const ExerciseTIle(
                            icon: Icons.person,
                            color: Colors.green,
                            exerciseName: 'Dean Winchester',
                            numberOfExercises: 'Career',
                          ),
                          const ExerciseTIle(
                            icon: Icons.star,
                            color: Colors.pink,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 'Others',
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
