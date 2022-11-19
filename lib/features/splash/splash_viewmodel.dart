import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:puzzle9to6/data/services/game_service.dart';
import 'package:puzzle9to6/features/game/game_view.dart';
import 'package:stacked/stacked.dart';

import '../../../injection/injection_container.dart';

class SplashViewModel extends BaseViewModel {
  Future<void> init(BuildContext context) async {
    await initImages();
  }

  Future<void> initImages() async {
    //await locator<LottieCache>().add(AppImages.spaceBackground.appLottie);
    /*precacheImage(
      AssetImage(AppImages.items.laserLevel1.appImage),
      context,
    );*/
    await Future.delayed(Duration(seconds: 1));
    Get.to(() => GameView());
    //print('Level: ' + (await locator<GameService>().getLevel()).toRawJson());
    //locator<GameService>().addLevelModel('Level - 1');
  }
}
