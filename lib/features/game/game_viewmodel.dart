import 'package:puzzle9to6/data/services/game_service.dart';
import 'package:puzzle9to6/injection/injection_container.dart';
import 'package:stacked/stacked.dart';

import '../../data/models/level_model.dart';

class GameViewModel extends BaseViewModel {
  LevelModel? levelModel;
  late bool isInited;
  late List<String> topToBottomWords;
  late List<String> leftToRightWords;
  late Map<int, String> letters;
  late List<int> correctLetters;
  late List<int> wrongLetters;

  Future<void> init() async {
    isInited = false;
    levelModel = await getLevel();
    letters = {};
    correctLetters = [];
    wrongLetters = [];
    topToBottomWords = [
      '',
      '',
      '',
    ];
    leftToRightWords = [
      '',
      '',
      '',
    ];
    isInited = true;
    notifyListeners();
  }

  Future<LevelModel> getLevel() async {
    return locator<GameService>().getLevel();
  }

  void textChanged(String text, int index) {
    letters[index] = text;
    //controlWords();
  }

  void controlWords() {
    /*if (index > 3 && (index % 5 != 0 && index % 5 != 4) && index < 19) {
          }*/
    topToBottomWords = [
      coverWithTopBottom(0, topLetterSummer(6)),
      coverWithTopBottom(1, topLetterSummer(7)),
      coverWithTopBottom(2, topLetterSummer(8)),
    ];
    leftToRightWords = [
      coverWithLeftRight(0, leftLetterSummber(6)),
      coverWithLeftRight(1, leftLetterSummber(11)),
      coverWithLeftRight(2, leftLetterSummber(16)),
    ];

    print('Top words: $topToBottomWords');
    print('Left words: $leftToRightWords');

    print('Real top words: ${levelModel!.topToBottomWords}');
    print('Real left words: ${levelModel!.leftToRightWords}');

    correctLetters = [];
    wrongLetters = [];
    for (int i = 0; i < 3; i++) {
      var userWord = topToBottomWords[i];
      var realWord = levelModel!.topToBottomWords![i];
      if (userWord.toLowerCase() == realWord.toLowerCase()) {
        correctLetters.addAll(getTopLetterIndex(6 + (i)));
      } else if (userWord.length == 5) {
        wrongLetters.addAll(getTopLetterIndex(6 + (i)));
      }

      userWord = leftToRightWords[i];
      realWord = levelModel!.leftToRightWords![i];
      if (userWord.toLowerCase() == realWord.toLowerCase()) {
        correctLetters.addAll(getLeftLetterIndex(6 + (i * 5)));
      } else if (userWord.length == 5) {
        wrongLetters.addAll(getLeftLetterIndex(6 + (i)));
      }
    }

    print('correct letters $correctLetters');
    print('wrong letters $wrongLetters');
    notifyListeners();
  }

  String coverWithTopBottom(int index, String str) {
    return '${levelModel!.topLetters![index]}$str${levelModel!.bottomLetters![index]}';
  }

  String topLetterSummer(int index) {
    String result = '';
    for (int i = 0; i < 3; i++) {
      result += letters[index + (5 * i)] ?? '';
    }
    return result;
  }

  String coverWithLeftRight(int index, String str) {
    return '${levelModel!.leftLetters![index]}$str${levelModel!.rightLetters![index]}';
  }

  String leftLetterSummber(int index) {
    String result = '';
    for (int i = 0; i < 3; i++) {
      result += letters[index + (i)] ?? '';
    }
    return result;
  }

  List<int> getTopLetterIndex(int index) {
    List<int> result = [];
    for (int i = 0; i < 3; i++) {
      result.add(index + (5 * i));
    }
    return result;
  }

  List<int> getLeftLetterIndex(int index) {
    List<int> result = [];
    for (int i = 0; i < 3; i++) {
      result.add(index + i);
    }
    return result;
  }
}
