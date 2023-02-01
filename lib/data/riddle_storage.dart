
import 'package:implementation_dependency_injection/model/riddle_model.dart';

class RiddleStorage {
 final List<RiddleModel>riddleList = [
  RiddleModel(id: 55, riddle: 'Why a fly can\'t bird but a bird can fly'),
  RiddleModel(id: 56, riddle: 'Ask me a riddle and i reply'),
  RiddleModel(id: 57, riddle: 'What grows bigger the more you take'),
  RiddleModel(id: 58, riddle: 'Whats wet and dry at the same time'),
 ];

 RiddleModel getRiddleById(int id){
  return riddleList.firstWhere((element) => element.id == id);
 }


 RiddleModel getRiddleByIndex(int id){
  return riddleList[id];
 }



}