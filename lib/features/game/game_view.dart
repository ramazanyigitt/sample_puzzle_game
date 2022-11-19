import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:puzzle9to6/features/game/game_viewmodel.dart';
import 'package:puzzle9to6/shared/app_theme.dart';
import 'package:stacked/stacked.dart';

part 'widgets/title_widget.dart';
part 'widgets/puzzle_box.dart';
part 'widgets/control_button.dart';

class GameView extends StatelessWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().greyScale0,
      body: SafeArea(
        child: ViewModelBuilder<GameViewModel>.reactive(
          viewModelBuilder: () => GameViewModel(),
          onModelReady: (model) => model.init(),
          builder: (context, viewModel, child) {
            if (!viewModel.isInited) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container(
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _TitleWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(child: _PuzzleBox()),
                  _ControlButton(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
