import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'widget/build_questions_list.dart';
import 'widget/my_bttn.dart';

class QuizSelectionScreen extends StatefulWidget {
  const QuizSelectionScreen({Key? key}) : super(key: key);

  @override
  _QuizSelectionScreenState createState() => _QuizSelectionScreenState();
}

class _QuizSelectionScreenState extends State<QuizSelectionScreen> {
  String selectedDifficulty = 'easy';
  String selectedType = 'multiple_choice';

  void addQuestionToFirestore(String question) {
    FirebaseFirestore.instance.collection('SelectedQuestions').add({
      'question': question,
      'difficulty': selectedDifficulty,
      'type': selectedType
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/quiz-seamless-pattern-in-doodle-style-illustration-back-to-school-concept-stationery-symbols-on-a-white-background-pattern-hand-drawn-for-print-and-game-quiz-vector.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(172, 7, 27, 44),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                      child: Text(
                        'Select Question',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DropdownButton<String>(
                          dropdownColor: Colors.black,
                          value: selectedDifficulty,
                          onChanged: (newValue) {
                            setState(() {
                              selectedDifficulty = newValue!;
                            });
                          },
                          items: <String>['easy', 'medium', 'hard']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                        ),
                        DropdownButton<String>(
                          dropdownColor: Colors.black,
                          value: selectedType,
                          onChanged: (newValue) {
                            setState(() {
                              selectedType = newValue!;
                            });
                          },
                          items: <String>['multiple_choice', 'true_false']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                    StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection('Questions')
                          .doc(selectedDifficulty)
                          .collection(selectedType)
                          .snapshots(),
                      builder:
                          (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Text('Error: ${snapshot.error.toString()}');
                        }

                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(child: CircularProgressIndicator());
                        }

                        final questions = snapshot.data!.docs;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  '$selectedDifficulty $selectedType Questions:',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            BuildQuestionsList(questions: questions, onAddSelectedQuestionsToFirestore: () {  },),
                            const SizedBox(
                              height: 50,
                            ),
                            Center(
                                child: MyElevatedButton(
                              text: 'Add Question',
                              onPressed: () {
                                
                              },
                            )),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}