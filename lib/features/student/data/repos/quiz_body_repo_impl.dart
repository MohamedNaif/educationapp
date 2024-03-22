import 'package:educationapp/features/student/data/models/question_model.dart';

abstract class QuizBodyRepo {
  Future<List<QuestionModel>> getQuestionsBody();
}
