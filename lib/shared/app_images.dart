class AppImages {
  static final loading = 'loading.gif';
  static final logo = 'logo1.png';
  static final spaceBackground = 'space_background.json';
  static final saturn = 'saturn.json';
  static final starShip = 'starship.json';
  static final mapEpisode1Level1 = 'level1.png';
}

extension AppImageString on String {
  String get appImage => 'assets/images/$this';
  String get appLottie => 'assets/lotties/$this';
}
