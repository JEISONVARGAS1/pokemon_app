import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:prokemn_app/feature/onboarding/ui/widget/onboarding_slide.dart';
import 'package:prokemn_app/uikit/iatros_ui_kit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/feature/onboarding/provider/onboarding_controller.dart';

class OnboardingPage extends ConsumerStatefulWidget {
  const OnboardingPage({super.key});

  @override
  ConsumerState<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ConsumerState<OnboardingPage>
    with SingleTickerProviderStateMixin {
  late final PageController _pageController;
  late final AnimationController _arrowAnimationController;
  late final Animation<double> _arrowFadeAnimation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _arrowAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _arrowFadeAnimation = CurvedAnimation(
      parent: _arrowAnimationController,
      curve: Curves.easeOut,
    );
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => ref.read(onboardingControllerProvider.notifier).setPageIndex(0),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _arrowAnimationController.dispose();
    super.dispose();
  }

  void _navigateToLobby() {
    if (!mounted) return;
    context.go('/lobby');
  }

  void _onPageChanged(int index) {
    ref.read(onboardingControllerProvider.notifier).setPageIndex(index);
    if (index == 1) {
      _arrowAnimationController.forward();
    } else {
      _arrowAnimationController.reverse();
    }
  }

  void _onBackPressed() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void _onNextPressed() {
    final currentIndex = ref
        .read(onboardingControllerProvider)
        .currentPageIndex;
    if (currentIndex < OnboardingController.totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      _navigateToLobby();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingControllerProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: _onPageChanged,
                      physics: const BouncingScrollPhysics(),
                      children: [
                        OnboardingSlide(
                          header: 'Onboarding 01',
                          imagePath: 'assets/image/ombordin1.png',
                          title: 'Todos los Pokémon en\nun solo lugar',
                          description:
                              'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo.',
                          onPressed: _onNextPressed,
                        ),
                        OnboardingSlide(
                          header: 'Onboarding 02',
                          imagePath: 'assets/image/ombordin2.png',
                          title: 'Mantén tu Pokédex\nactualizada',
                          description:
                              'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación.',
                          onPressed: _onNextPressed,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
                  child: Column(
                    children: [
                      _PageIndicator(
                        totalPages: OnboardingController.totalPages,
                        currentIndex: state.currentPageIndex,
                      ),
                      const SizedBox(height: 24),
                      UiWidget().buttons.primaryButton(
                        label:
                            state.currentPageIndex ==
                                OnboardingController.totalPages - 1
                            ? 'Empecemos'
                            : 'Continuar',
                        onPressed: _onNextPressed,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 16,
              left: 16,
              child: IgnorePointer(
                ignoring: state.currentPageIndex != 1,
                child: FadeTransition(
                  opacity: _arrowFadeAnimation,
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: _onBackPressed,
                      borderRadius: BorderRadius.circular(24),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColors.textPrimary,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class _PageIndicator extends StatelessWidget {
  final int totalPages;
  final int currentIndex;

  const _PageIndicator({required this.totalPages, required this.currentIndex});

  static const double _activeWidth = 24;
  static const double _inactiveSize = 8;
  static const double _height = 8;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isActive ? _activeWidth : _inactiveSize,
          height: _height,
          decoration: BoxDecoration(
            color: isActive
                ? AppColors.info
                : AppColors.textTertiary.withOpacity(0.4),
            borderRadius: BorderRadius.circular(_height / 2),
          ),
        );
      }),
    );
  }
}
