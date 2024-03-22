import 'package:educationapp/features/student/data/question_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'quiz_body_state.dart';

class QuizBodyCubit extends Cubit<QuizBodyState> {
  QuizBodyCubit() : super(QuizBodyInitial()){
    fetchQuestions() ;
  }
  int questionIndex = 0;
  late List<QuestionModel> questionModel;
  void fetchQuestions() {
    emit(QuizBodyLoading());
    questionModel = [
      const QuestionModel(
        question:
            'In what year did the United States host the FIFA World Cup for the first time?',
        answers: ['1986', '1994', '2002', '2010'],
        correctAnswerIndex: 1,
      ),
      const QuestionModel(
        question:
            'Do you love mohamed naif',
        answers: ['no', 'no', 'no', 'no'],
        correctAnswerIndex: 1,
      ),
      const QuestionModel(
        question:
            'Do you love ahmed nasser',
        answers: ['yes', 'yes', 'yes', 'yes'],
        correctAnswerIndex: 1,
      ),

    ];
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
