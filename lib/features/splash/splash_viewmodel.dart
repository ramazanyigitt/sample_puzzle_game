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
    await Future.delayed(Duration(seconds: 1));
    Get.to(() => GameView());
  }
}
