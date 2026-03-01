import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
sealed class SplashState with _$SplashState {
  const factory SplashState({
    Animation<double>? logoFade,
    Animation<double>? logoScale,
    @Default(300) double logoWidth,
    @Default(300) double logoHeight,
    AnimationController? bgController,
    AnimationController? logoController,
  }) = SplashStateData;

  factory SplashState.init() => SplashState();
}
