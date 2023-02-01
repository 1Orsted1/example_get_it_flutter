import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:implementation_dependency_injection/services/riddle_selector.dart';
import '../view/riddle_event.dart';
import '../view/riddle_state.dart';

class RiddleBloc extends Bloc<RiddleEvent, RiddleState> {
  //GetIt getIt = GetIt.instance;
  RiddleBloc() : super(RiddleInitial()){
    on<GetRiddleEvent>((event, emit) {
      try{
        emit(RiddleLoadingState());
        //do stuff
        emit(RiddleReceivedState("Ask me a riddle and i replay"));
      }catch(exception){
        return emit(ErrorState(error: exception.toString()));
      }
    });
    on<GetRandomRiddleById>((event, emit){
      try{
        emit(RiddleLoadingState());
        //do stuff
        //var resultingRiddle =  getIt<RiddleSelector>().getRandomElementById();
        var resultingRiddle =  GetIt.I.get<RiddleSelector>().getRandomElementById();
        //here use the dependency injection:
        emit(RiddleReceivedState(resultingRiddle));

      }catch(exception){
        return emit(ErrorState(error: exception.toString()));
      }
    });
  }

}
