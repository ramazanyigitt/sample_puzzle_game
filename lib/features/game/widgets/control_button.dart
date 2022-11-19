part of '../game_view.dart';

class _ControlButton extends ViewModelWidget<GameViewModel> {
  _ControlButton() : super();
  @override
  Widget build(BuildContext context, GameViewModel viewModel) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () {
          viewModel.controlWords();
        },
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
          decoration: BoxDecoration(
            color: AppTheme().greyScale1.withOpacity(0.90),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            'Control',
            style: AppTheme().smallParagraphSemiBoldText.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
