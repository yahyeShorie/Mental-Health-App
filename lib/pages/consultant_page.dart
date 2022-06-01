import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealth_app/navigationBar/bottom_navigation_bar.dart';
import 'package:mentalhealth_app/utilits/chat_box.dart';
import 'package:mentalhealth_app/utilits/date_break.dart';
import 'package:mentalhealth_app/utilits/voice_chat.dart';

class ConsultantPage extends StatefulWidget {
  const ConsultantPage({Key? key}) : super(key: key);

  @override
  State<ConsultantPage> createState() => _ConsultantPageState();
}

class _ConsultantPageState extends State<ConsultantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //back to HomePage
                      GestureDetector(
                        onTap: () {
                          Get.testMode = true;
                          Get.to(() => BottomNavigationBarPage(
                                currentPage: 1,
                              ));
                          // Navigator.pushNamed(context, '/buttomNavigationBar');
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      //Text: Consultant Name
                      Column(
                        children: [
                          const Text(
                            "Bobby Singer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          //online situation
                          Text(
                            "online",
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      //Call
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            const SizedBox(height: 25),

            //Chat Card
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(35.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                  child: ListView(
                    children: [
                      //Chatting...
                      Row(
                        children: [
                          ChatBOx(
                              boxColor: Colors.grey[300],
                              chatTime: '11:04',
                              text: 'Hi Jason! How are you?'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ChatBOx(
                              boxColor: Colors.blue[900],
                              chatTime: '11:04',
                              text: 'Im good, thanks! How are you?'),
                        ],
                      ),
                      Row(
                        children: [
                          ChatBOx(
                              boxColor: Colors.grey[300],
                              chatTime: '11:04',
                              text: 'Im great, are you free today?'),
                        ],
                      ),
                      const DateBreak(
                        text: 'Today',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          VoiceChat(
                            boxColor: Colors.blue[900],
                            chatTime: '11:04',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ChatBOx(
                              boxColor: Colors.grey[300],
                              chatTime: '11:04',
                              text: '🥸🥸🥸🥸'),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Bobby ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'is typing ',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 40,
                            color: Colors.grey[400],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //chatting footer
            Container(
                height: 110,
                // padding: const EdgeInsets.symmetric(horizontal: 35.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Write a message box
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      padding: const EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Write a message ..',
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.image_rounded,
                              color: Colors.grey[600], size: 30)
                        ],
                      ),
                    ),

                    //Audio section
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
