import 'package:get_it/get_it.dart';
import 'package:implementation_dependency_injection/services/riddle_selector.dart';

final getItInstance = GetIt.instance;

void setupLocator() {
  //getItInstance.registerSingleton<RiddleSelector>(RiddleSelector());

// Alternatively you could write it if you don't like global variables
  GetIt.I.registerSingleton<RiddleSelector>(RiddleSelector());
}