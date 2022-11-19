part of '../game_view.dart';

class _TitleWidget extends ViewModelWidget<GameViewModel> {
  _TitleWidget() : super();
  @override
  Widget build(BuildContext context, GameViewModel viewModel) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme().greyScale1.withOpacity(0.90),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                showInformation(context);
              },
              child: Icon(
                Icons.help,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 5),
            Text(
              viewModel.levelModel?.levelTitle ?? 'Unknown',
              style: AppTheme().smallParagraphSemiBoldText.copyWith(
                    color: Colors.white,
                  ),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  void showInformation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 244, 244, 244),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '9-to-6',
                      style: AppTheme().smallParagraphSemiBoldText.copyWith(
                            color: AppTheme().greyScale1,
                          ),
                    ),
                    Text(
                      'puzzle',
                      style: AppTheme().extraSmallParagraphRegularText.copyWith(
                          color: AppTheme().greyScale1,
                          fontSize: AppTheme()
                                  .extraSmallParagraphRegularText
                                  .fontSize! -
                              1),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Arrange the letters in the puzzle title in the blank squares in the center. When solved, you will form 3 words reading left to right and 3 words top to bottom.',
                      style: AppTheme().extraSmallParagraphRegularText.copyWith(
                            color: AppTheme().greyScale1,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
