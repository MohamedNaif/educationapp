import 'package:flutter/material.dart';


import '../../data/firestore_service.dart';
import 'widget/custom_text_form_field_style.dart';
import 'widget/my_bttn.dart';
// Import your Firestore service

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final FirestoreService firestoreService = FirestoreService();
  String selectedDifficulty = 'easy'; // Default difficulty level
  String selectedType = 'multiple_choice'; // Default question type

  @override
  Widget build(BuildContext context) {
    TextEditingController questionController = TextEditingController();
    TextEditingController choiceController1 = TextEditingController();
    TextEditingController choiceController2 = TextEditingController();
    TextEditingController choiceController3 = TextEditingController();
    TextEditingController choiceController4 = TextEditingController();

    return Scaffold(
      body: Container(
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
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      dropdownColor: Colors.black,
                      value: selectedDifficulty,
                      onChanged: (newValue) {
                        setState(() {
                          selectedDifficulty = newValue!;
                        });
                      },
                      items: <String>['easy', 'hard', 'medium']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.white),
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
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Add Question and Choices:',
                      style: TextStyle(color: Colors.white),
                    ),
                    CustomTextFormField(
                      controller: questionController,
                      labelText: 'Question',
                    ),
                    if (selectedType == 'multiple_choice')
                      Column(
                        children: [
                          CustomTextFormField(
                            controller: choiceController1,
                            labelText: 'Choice 1',
                          ),
                          CustomTextFormField(
                            controller: choiceController2,
                            labelText: 'Choice 2',
                          ),
                          CustomTextFormField(
                            controller: choiceController3,
                            labelText: 'Choice 3',
                          ),
                          CustomTextFormField(
                            controller: choiceController4,
                            labelText: 'Choice 4',
                          ),
                        ],
                      ),
                    if (selectedType == 'true_false')
                      Column(
                        children: [
                          CustomTextFormField(
                            controller: choiceController1,
                            labelText: 'Choice 1',
                          ),
                          CustomTextFormField(
                            controller: choiceController2,
                            labelText: 'Choice 2',
                          ),
                        ],
                      ),
                    const SizedBox(height: 20),
                    MyElevatedButton(
                      onPressed: () {
                        addQuestion(
                          questionController.text,
                          choiceController1.text,
                          choiceController2.text,
                          choiceController3.text,
                          choiceController4.text,
                        );
                      },
                      text: 'Add Question',
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

  void addQuestion(
    String question,
    String choice1,
    String choice2,
    String choice3,
    String choice4,
  ) {
    Map<String, dynamic> data = {
      'question': question,
      'choices': [choice1, choice2, choice3, choice4],
    };

    firestoreService.addQuestion(selectedDifficulty, selectedType, data);
  }
}
