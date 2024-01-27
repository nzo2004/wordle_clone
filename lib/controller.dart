import 'package:flutter/material.dart';
import 'package:wordle_clone/contanst/answer_stages.dart';
import 'package:wordle_clone/model/tile.model.dart';

class Controller extends ChangeNotifier {
  int currentTile = 0, currentRow = 0;
  List<TileModel> tileEntered = [];
  setKeyTapped({required String value}) {
    if (value == 'ENTER') {
      if (currentTile == 5 * (currentRow + 1)) {
        currentRow++;
        print('check word');
      }
    } else if (value == 'BACK') {
      if (currentTile > 0 * (currentRow + 1) - 5) {
        tileEntered.removeLast();
        currentTile--;
      }
    } else {
      if (currentTile < 5 * (currentRow + 1)) {
        tileEntered.add(
            TileModel(letter: value, answertStage: AnswertStage.notAnswered));
        currentTile++;
      }
    }
    print('current File $currentTile');
  }
}
