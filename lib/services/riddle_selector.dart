

import 'dart:math';

import '../data/riddle_storage.dart';

class RiddleSelector {
  String getRandomElementById(){
    RiddleStorage rs = RiddleStorage();
    Random random = Random();
    const int min = 55;
    const int max = 58;
    int randomId = min + random.nextInt(max - min);
    return rs.getRiddleById(randomId).riddle;
  }

}