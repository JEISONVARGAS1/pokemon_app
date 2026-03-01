import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:prokemn_app/core/model/start_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:prokemn_app/feature/splash/provider/model/splash_state.dart';

part 'splash_controller.g.dart';

@riverpod
class SplashController extends _$SplashController {
  @override
  FutureOr<SplashState> build() {
    ref.onDispose(() {
      state.value?.bgController?.dispose();
      state.value?.logoController?.dispose();
    });

    return SplashState.init();
  }

  initAnimations(TickerProvider ticker) {
    final bgController = AnimationController(
      vsync: ticker,
      duration: const Duration(seconds: 3),
    )..repeat();
    final logoController = AnimationController(
      vsync: ticker,
      duration: const Duration(milliseconds: 800),
    );
    final logoFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: logoController,
        curve: const Interval(0, 0.6, curve: Curves.easeOut),
      ),
    );
    final logoScale = Tween<double>(begin: 0.5, end: 1).animate(
      CurvedAnimation(
        parent: logoController,
        curve: const Interval(0, 0.6, curve: Curves.elasticOut),
      ),
    );

    _setState(
      state.value!.copyWith(
        bgController: bgController,
        logoController: logoController,
        logoFade: logoFade,
        logoScale: logoScale,
      ),
    );
  }

  List<StarData> generateStars() {
    final random = math.Random(42);
    return List.generate(50, (i) {
      return StarData(
        x: random.nextDouble(),
        y: random.nextDouble(),
        size: 2.0 + random.nextDouble() * 6, // 2-8px
        phase: random.nextDouble(),
      );
    });
  }

  void _setState(SplashState newState) => state = AsyncValue.data(newState);
}
