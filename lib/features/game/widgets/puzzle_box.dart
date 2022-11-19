part of '../game_view.dart';

class _PuzzleBox extends ViewModelWidget<GameViewModel> {
  _PuzzleBox() : super();
  @override
  Widget build(BuildContext context, GameViewModel viewModel) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemCount: 25,
        itemBuilder: (context, index) {
          if (index == 0 || index == 4 || index == 20 || index == 24) {
            return Container();
          }
          if (index > 3 && (index % 5 != 0 && index % 5 != 4) && index < 19) {
            return Container(
              color: viewModel.correctLetters.contains(index)
                  ? Colors.green
                  : viewModel.wrongLetters.contains(index)
                      ? Colors.red[600]
                      : AppTheme().greyScale3,
              child: Center(
                child: TextField(
                  maxLength: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '',
                    counterText: "",
                  ),
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    viewModel.textChanged(value, index);
                  },
                ),
              ),
            );
          }
          //LETTERS
          if (index >= 1 && index <= 3) {
            return Container(
              color: AppTheme().greyScale2,
              child: Center(
                  child: Text(viewModel.levelModel!.topLetters![index - 1])),
            );
          }
          if (index % 5 == 0) {
            return Container(
              color: AppTheme().greyScale2,
              child: Center(
                  child: Text(
                      viewModel.levelModel!.leftLetters![(index ~/ 5) - 1])),
            );
          } else if (index % 5 == 4) {
            return Container(
              color: AppTheme().greyScale2,
              child: Center(
                  child: Text(viewModel
                      .levelModel!.rightLetters![((index + 1) ~/ 5) - 2])),
            );
          } else {
            //bottom
            return Container(
              color: AppTheme().greyScale2,
              child: Center(
                  child:
                      Text(viewModel.levelModel!.bottomLetters![index - 21])),
            );
          }
        },
      ),
    );
  }
}
