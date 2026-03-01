import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/feature/onboarding/provider/model/onboarding_state.dart';

part 'onboarding_controller.g.dart';

@riverpod
class OnboardingController extends _$OnboardingController {
  static const int totalPages = 2;

  @override
  OnboardingState build() => OnboardingState.init();

  void setPageIndex(int index) {
    state = state.copyWith(currentPageIndex: index);
  }
}
