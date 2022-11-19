import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:puzzle9to6/data/models/level_model.dart';

@LazySingleton()
class GameService {
  Future<LevelModel> getLevel() async {
    final allLevels =
        await FirebaseFirestore.instance.collection('levels').limit(1).get();
    return LevelModel.fromJson(allLevels.docs.first.data());
  }

  Future<void> addLevelModel(String levelTitle) async {
    CollectionReference levels =
        FirebaseFirestore.instance.collection('levels');
    levels
        .add({
          "level_title": levelTitle,
          "top_letters": ["A", "B", "C"],
          "bottom_letters": ["D", "E", "F"],
          "right_letters": ["G", "H", "J"],
          "left_letters": ["K", "L", "M"],
          "top_to_bottom_words": ["AAAAD", "BBBBE", "CCCCF"],
          "left_to_right_words": ["KABCG", "LABCH", "MABCJ"],
        })
        .then((value) => print("Level Added"))
        .catchError((error) => print("Failed to add level: $error"));
  }
}
