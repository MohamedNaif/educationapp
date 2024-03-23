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
        question: 'Which planet is known as the "Red Planet"?',
        answers: [
          'Venus',
          'Mars',
          'Jupiter',
          'Saturn',
        ],
        correctAnswerIndex: 1,
      ),
      const QuestionModel(
        question: 'Who wrote the famous play "Romeo and Juliet"?',
        answers: [
          'William Shakespeare',
          'Charles Dickens',
          'Jane Austen',
          'Mark Twain',
        ],
        correctAnswerIndex: 1,
      ),
    ];
    return questionModelList;
  }
}
