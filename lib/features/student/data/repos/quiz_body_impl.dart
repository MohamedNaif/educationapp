import 'package:educationapp/features/student/data/models/question_model.dart';
import 'package:educationapp/features/student/data/repos/quiz_body_repo_impl.dart';

class QuizBodyRepoImpl implements QuizBodyRepo {
  @override
  Future<List<QuestionModel>> getQuestionsBody() async {
    List<QuestionModel> questionModelList = [
      const QuestionModel(
        question:
            'In what year did the United States host the FIFA World Cup for the first time?',
        answers: ['1986', '1994', '2002', '2010'],
        correctAnswerIndex: 1,
      ),
      const QuestionModel(
        question: 'Do you love mohamed naif',
        answers: ['no', 'no', 'no', 'no'],
        correctAnswerIndex: 1,
      ),
      const QuestionModel(
        question: 'Do you love ahmed nasser',
        answers: ['yes', 'yes', 'yes', 'yes'],
        correctAnswerIndex: 1,
      ),
    ];
    return questionModelList;
  }
}
