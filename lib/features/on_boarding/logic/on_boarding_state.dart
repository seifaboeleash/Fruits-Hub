sealed class OnBoardingState {}

class OnBoardingInitialState extends OnBoardingState {}

class OnBoardingPageChangedState extends OnBoardingState {
  final int pageIndex;

  OnBoardingPageChangedState(this.pageIndex);
}
