import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../shared/app_theme.dart';
import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.init(context),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Loading...',
                  style: AppTheme().largeParagraphBoldText.copyWith(
                        color: Colors.black,
                        fontSize: 46,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
