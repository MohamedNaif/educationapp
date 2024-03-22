import 'package:flutter/material.dart';
import '../../data/firestore_service.dart';
import 'widget/custom_text_form_field_style.dart';
import 'widget/my_bttn.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final FirestoreService firestoreService = FirestoreService();
  String selectedDifficulty = 'easy';
  String selectedType = 'multiple_choice';

  @override
  Widget build(BuildContext context) {
    TextEditingController questionController = TextEditingController();
    TextEditingController answerController = TextEditingController();
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
                    const SizedBox(height: 20),
                    const Text(
                      'Add Question and Choices:',
                      style: TextStyle(color: Colors.white),
                    ),
                    CustomTextFormField(
                      controller: questionController,
                      labelText: 'Question',
                    ),
                    CustomTextFormField(
                      controller: answerController,
                      labelText: 'Answer',
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
                          answerController.text,
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
    String answer,
    String choice1,
    String choice2,
    String choice3,
    String choice4,
  ) {
    String uniqueId =
        UniqueKey().toString(); // Generate a unique ID for the question
    Map<String, dynamic> data = {
      'question': question,
      'answer': answer,
      'choices': [choice1, choice2, choice3, choice4],
    };

    firestoreService
        .addQuestion(
      selectedDifficulty,
      selectedType,
      uniqueId,
      data,
    )
        .then((_) {
      // Show a success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Question added successfully!'),
          duration: Duration(seconds: 2),
        ),
      );
    }).catchError((error) {
      // Show an error message if adding the question fails
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error adding question: $error'),
          duration: const Duration(seconds: 2),
        ),
      );
    });
  }
}