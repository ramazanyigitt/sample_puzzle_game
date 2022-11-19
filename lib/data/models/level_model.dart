import 'dart:convert';

class LevelModel {
  LevelModel({
    this.levelTitle,
    this.topLetters,
    this.bottomLetters,
    this.rightLetters,
    this.leftLetters,
    this.topToBottomWords,
    this.leftToRightWords,
  });

  final String? levelTitle;
  final List<String>? topLetters;
  final List<String>? bottomLetters;
  final List<String>? rightLetters;
  final List<String>? leftLetters;
  final List<String>? topToBottomWords;
  final List<String>? leftToRightWords;

  factory LevelModel.fromRawJson(String str) =>
      LevelModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LevelModel.fromJson(Map<String, dynamic> json) => LevelModel(
        levelTitle: json["level_title"] == null ? null : json["level_title"],
        topLetters: json["top_letters"] == null
            ? null
            : List<String>.from(json["top_letters"].map((x) => x)),
        bottomLetters: json["bottom_letters"] == null
            ? null
            : List<String>.from(json["bottom_letters"].map((x) => x)),
        rightLetters: json["right_letters"] == null
            ? null
            : List<String>.from(json["right_letters"].map((x) => x)),
        leftLetters: json["left_letters"] == null
            ? null
            : List<String>.from(json["left_letters"].map((x) => x)),
        topToBottomWords: json["top_to_bottom_words"] == null
            ? null
            : List<String>.from(json["top_to_bottom_words"].map((x) => x)),
        leftToRightWords: json["left_to_right_words"] == null
            ? null
            : List<String>.from(json["left_to_right_words"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "level_title": levelTitle == null ? null : levelTitle,
        "top_letters": topLetters == null
            ? null
            : List<dynamic>.from(topLetters?.map((x) => x) ?? []),
        "bottom_letters": bottomLetters == null
            ? null
            : List<dynamic>.from(bottomLetters?.map((x) => x) ?? []),
        "right_letters": rightLetters == null
            ? null
            : List<dynamic>.from(rightLetters?.map((x) => x) ?? []),
        "left_letters": leftLetters == null
            ? null
            : List<dynamic>.from(leftLetters?.map((x) => x) ?? []),
        "top_to_bottom_words": topToBottomWords == null
            ? null
            : List<dynamic>.from(topToBottomWords?.map((x) => x) ?? []),
        "left_to_right_words": leftToRightWords == null
            ? null
            : List<dynamic>.from(leftToRightWords?.map((x) => x) ?? []),
      };
}
