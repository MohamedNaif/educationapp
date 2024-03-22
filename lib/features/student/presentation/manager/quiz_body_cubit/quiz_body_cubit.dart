import 'package:educationapp/features/student/data/models/question_model.dart';
import 'package:educationapp/features/student/data/repos/quiz_body_impl.dart';
import 'package:educationapp/features/student/data/repos/quiz_body_repo_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'quiz_body_state.dart';

class QuizBodyCubit extends Cubit<QuizBodyState> {
  QuizBodyCubit() : super(QuizBodyInitial()){
    fetchQuestions() ;
  }
  int questionIndex = 0;
  late List<QuestionModel> questionModel;
  final QuizBodyRepo quizBodyRepo = QuizBodyRepoImpl() ;
  void fetchQuestions() async {
    emit(QuizBodyLoading());
    questionModel = await quizBodyRepo.getQuestionsBody() ;
    emit(QuizBodySuccess()) ;
  }
  void nextQuestion(){
    if ( questionIndex != questionModel.length - 1){
        questionIndex++ ;
        emit(QuizBodySuccess()) ;
    }
  }
  void previosQuestion(){
    if ( questionIndex != 0){
        questionIndex-- ;
        emit(QuizBodySuccess()) ;
    }
  }
}
