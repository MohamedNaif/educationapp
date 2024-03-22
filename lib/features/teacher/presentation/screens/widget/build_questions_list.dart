import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BuildQuestionsList extends StatefulWidget {
  const BuildQuestionsList({
    Key? key,
    required this.questions,
    // required this.onQuestionsSelected,
  }) : super(key: key);

  final List<QueryDocumentSnapshot<Object?>> questions;
  // final void Function(List<String>) onQuestionsSelected;

  @override
  _BuildQuestionsListState createState() => _BuildQuestionsListState();
}

class _BuildQuestionsListState extends State<BuildQuestionsList> {
  List<String> selectedQuestions = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.questions.length,
      itemBuilder: (context, index) {
        final questionData = widget.questions[index].data()
            as Map<String, dynamic>; // Explicit cast to Map<String, dynamic>
        final questionText = questionData['question']
            as String?; // Null check using 'as String?'
        final answerText = questionData['answer']
            as String?; // Assuming 'answer' is a field in your Firestore document
        final choicesArray = questionData['choices']
            as List<dynamic>?; // Assuming 'choices' is an array in your Firestore document

        return ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Question: ${questionText ?? ''}',
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                'Answer: ${answerText ?? ''}',
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                'Choices: ${choicesArray?.join(', ') ?? ''}',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          leading: Checkbox(
            value: selectedQuestions.contains(questionText),
            checkColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            fillColor: const MaterialStatePropertyAll(Colors.black),
            onChanged: (value) {
              setState(() {
                if (value != null && value) {
                  selectedQuestions.add(questionText ?? '');
                } else {
                  selectedQuestions.remove(questionText);
                }
                // Call the callback function with selected questions
                // widget.onQuestionsSelected(selectedQuestions);
              });
            },
          ),
        );
      },
    );
  }
}
