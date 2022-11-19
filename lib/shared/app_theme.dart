import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static AppTheme? _instance;

  AppTheme._();

  factory AppTheme() => _instance ??= AppTheme._();

  final primaryColor = Color.fromARGB(255, 126, 16, 236);
  final darkPrimaryColor = Color.fromARGB(255, 137, 81, 192);
  final secondaryColor = Color.fromARGB(255, 252, 134, 90);
  final accentFirstColor = Color.fromARGB(255, 255, 212, 103);
  final accentSecondColor = Color.fromARGB(255, 77, 99, 34);
  final blackColor = Color.fromARGB(255, 55, 59, 66);
  final greyScale0 = Color.fromARGB(255, 30, 34, 43);
  final greyScale1 = Color.alphaBlend(
      Color.fromRGBO(0, 0, 0, 0.20), Color.fromARGB(255, 62, 69, 84));
  final greyScale2 = Color.fromARGB(255, 108, 113, 122);
  final greyScale3 = Color.fromARGB(255, 154, 157, 163);
  final greyScale4 = Color.fromARGB(255, 194, 198, 206);
  final greyScale5 = Color.fromARGB(255, 248, 249, 251);
  final greyScale6 = Color.fromARGB(255, 250, 251, 253);
  final lightBlueColor = Color.fromARGB(255, 209, 231, 237);
  final whiteColor = Color.fromARGB(255, 255, 255, 255);
  final bgColor = Color.fromARGB(255, 255, 255, 255);
  final gradientPrimary = LinearGradient(
    colors: [
      Color.fromARGB(170, 255, 225, 91),
      Color.fromARGB(255, 161, 46, 255),
      Color.fromARGB(255, 137, 81, 192),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  late final ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xff252525),
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      centerTitle: false,
      elevation: 0,
      titleTextStyle: GoogleFonts.montserrat(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      iconTheme: IconThemeData(color: blackColor),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: secondaryColor,
      primary: primaryColor,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff252525),
      selectionHandleColor: Color(0xff252525),
      selectionColor: Colors.black26,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xff252525)),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
    ),
  );

  final headingText = GoogleFonts.inter(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
  final largeParagraphBoldText = GoogleFonts.inter(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  final paragraphBoldText = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  final paragraphSemiBoldText = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  final paragraphRegularText = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  final buttonText = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  final smallParagraphSemiBoldText = GoogleFonts.inter(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  final smallParagraphRegularText = GoogleFonts.inter(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  );
  final smallParagraphMediumText = GoogleFonts.inter(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  final extraSmallParagraphSemiBoldText = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );
  final extraSmallParagraphRegularText = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
  final extraSmallParagraphMediumText = GoogleFonts.inter(
    fontSize: 15,
    fontWeight: FontWeight.w500,
  );
}

extension ColorExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get semiRegular => copyWith(fontWeight: FontWeight.w300);
  TextStyle get extraSmall => copyWith(fontSize: 15);
  TextStyle get small => copyWith(fontSize: 17);
  TextStyle get mediumSmall => copyWith(fontSize: 20);
  TextStyle get mediumLarge => copyWith(fontSize: 25);
  TextStyle get large => copyWith(fontSize: 30);
  TextStyle get extraLarge => copyWith(fontSize: 35);
  TextStyle get extraExtraLarge => copyWith(fontSize: 40);
  TextStyle get extraExtraExtraLarge => copyWith(fontSize: 45);
  TextStyle get extraExtraExtraExtraLarge => copyWith(fontSize: 50);

  TextStyle get primaryColor => copyWith(color: AppTheme().primaryColor);
  TextStyle get secondaryColor => copyWith(color: AppTheme().secondaryColor);
  TextStyle get accentFirstColor =>
      copyWith(color: AppTheme().accentFirstColor);
  TextStyle get accentSecondColor =>
      copyWith(color: AppTheme().accentSecondColor);
  TextStyle get blackColor => copyWith(color: AppTheme().blackColor);
  TextStyle get greyScale0 => copyWith(color: AppTheme().greyScale0);
  TextStyle get greyScale1 => copyWith(color: AppTheme().greyScale1);
  TextStyle get greyScale2 => copyWith(color: AppTheme().greyScale2);
  TextStyle get greyScale3 => copyWith(color: AppTheme().greyScale3);
  TextStyle get greyScale4 => copyWith(color: AppTheme().greyScale4);
  TextStyle get greyScale5 => copyWith(color: AppTheme().greyScale5);
  TextStyle get greyScale6 => copyWith(color: AppTheme().greyScale6);
  TextStyle get lightBlueColor => copyWith(color: AppTheme().lightBlueColor);
  TextStyle get whiteColor => copyWith(color: AppTheme().whiteColor);
  TextStyle get bgColor => copyWith(color: AppTheme().bgColor);
}
