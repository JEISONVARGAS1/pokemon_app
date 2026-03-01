import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
sealed class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    @Default(0) int currentPageIndex,
  }) = OnboardingStateData;

  factory OnboardingState.init() => const OnboardingState();
}
