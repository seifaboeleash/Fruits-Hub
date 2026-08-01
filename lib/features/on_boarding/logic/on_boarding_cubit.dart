import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/on_boarding/logic/on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitialState());

  int currentPageIndex = 0;

  void changePage(int index) {
    currentPageIndex = index;
    emit(OnBoardingPageChangedState(index));
  }
}
