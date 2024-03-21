import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference questionsCollection =
      FirebaseFirestore.instance.collection('Questions');

  void addQuestion(String difficulty, String type, Map<String, dynamic> data) async {
    try {
      await questionsCollection
          .doc(difficulty)
          .collection(type)
          .add(data);
    } catch (e) {
      print('Error adding question: $e');
    }
  }

  Stream<QuerySnapshot> getQuestions(String difficulty, String type) {
    return questionsCollection
        .doc(difficulty)
        .collection(type)
        .snapshots();
  }
}
