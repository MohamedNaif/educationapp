import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BuildQuestionsList extends StatefulWidget {
  const BuildQuestionsList({
    Key? key,
    required this.questions,
    required this.onAddSelectedQuestionsToFirestore,
  }) : super(key: key);

  final List<QueryDocumentSnapshot<Object?>> questions;
  final VoidCallback onAddSelectedQuestionsToFirestore;

  @override
  _BuildQuestionsListState createState() => _BuildQuestionsListState();
}

class _BuildQuestionsListState extends State<BuildQuestionsList> {
  List<String> selectedQuestions = [];

  void addSelectedQuestionsToFirestore() async {
    if (selectedQuestions.isNotEmpty) {
      final batch = FirebaseFirestore.instance.batch();
      for (final question in selectedQuestions) {
        final docRef =
            FirebaseFirestore.instance.collection('Questions').doc(question);
        batch.set(docRef, {
          'question': question,
          // Add other fields like choices, answer, etc. as needed
        });
      }
      await batch.commit();
      setState(() {
        selectedQuestions.clear();
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Selected questions added to Firestore')),
      );
    }
  }

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
        final choicesArray = questionData['choices'] as List<dynamic>?;

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
              });
            },
          ),
        );
      },
    );
  }
}
