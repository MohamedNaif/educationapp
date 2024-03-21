import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference questionsCollection =
      FirebaseFirestore.instance.collection('Questions');

  Future<void> addQuestion(String difficulty, String type, String questionId, Map<String, dynamic> data) async {
    try {
      await questionsCollection
          .doc(difficulty)
          .collection(type)
          .doc(questionId)
          .set(data);
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
