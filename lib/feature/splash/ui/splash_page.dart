import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/model/start_data.dart';
import 'package:prokemn_app/feature/home/provider/home_controller.dart';
import 'package:prokemn_app/feature/splash/ui/widget/star_painter.dart';
import 'package:prokemn_app/feature/splash/provider/splash_controller.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      ref.read(splashControllerProvider.notifier).initAnimations(this);
      ref.read(homeControllerProvider.notifier).initPage();
      Future.delayed(const Duration(milliseconds: 2500), _navigateToOnboarding);
    });
  }

  void _navigateToOnboarding() {
    if (!mounted) return;
    context.go('/onboarding');
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(splashControllerProvider).value!;
    final provider = ref.read(splashControllerProvider.notifier);

    if (state.bgController == null) return const SizedBox.shrink();

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: _AnimatedStarsBackground(
              animation: state.bgController!,
              stars: provider.generateStars(),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/Loader_splash.png',
                    fit: BoxFit.contain,
                    width: state.logoWidth,
                    height: state.logoHeight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AnimatedStarsBackground extends AnimatedWidget {
  final List<StarData> stars;

  const _AnimatedStarsBackground({
    required this.stars,
    required Animation<double> animation,
  }) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      color: Color(0xFF0B132B),
      child: CustomPaint(
        painter: StarsPainter(animation: animation, stars: stars),
        size: Size.infinite,
      ),
    );
  }
}
