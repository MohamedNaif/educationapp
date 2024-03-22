import 'package:educationapp/features/student/data/models/question_model.dart';
import 'package:educationapp/features/student/data/repos/quiz_body_impl.dart';
import 'package:educationapp/features/student/data/repos/quiz_body_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'quiz_body_state.dart';

class QuizBodyCubit extends Cubit<QuizBodyState> {
  QuizBodyCubit() : super(QuizBodyInitial()) {
    fetchQuestions();
  }
  int questionIndex = 0;
  late List<QuestionModel> questionModelList;
  late List<Map<String, int>> selectedWrongOrRightAnswer;
  final QuizBodyRepo quizBodyRepo = QuizBodyRepoImpl();
  void fetchQuestions() async {
    emit(QuizBodyLoading());
    questionModelList = await quizBodyRepo.getQuestionsBody();
    selectedWrongOrRightAnswer = List.generate(
          questionModelList.length,
          (index) => {
            'selectedAnswerIndex': -1,
            'score': 0,
          },
        );
    emit(QuizBodySuccess());
  }

  void nextQuestion() {
    if (questionIndex != questionModelList.length - 1) {
      questionIndex++;
      emit(QuizBodySuccess());
    }
  }

  void previosQuestion() {
    if (questionIndex != 0) {
      questionIndex--;
      emit(QuizBodySuccess());
    }
  }
}
