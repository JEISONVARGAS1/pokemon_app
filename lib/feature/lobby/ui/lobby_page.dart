import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/widget/loading_page.dart';
import 'package:prokemn_app/feature/home/ui/home_page.dart';
import 'package:prokemn_app/feature/favorites/ui/favorites_page.dart';
import 'package:prokemn_app/feature/lobby/provider/lobby_controller.dart';
import 'package:prokemn_app/feature/home/ui/widgets/pokedex_bottom_nav.dart';
import 'package:prokemn_app/feature/profile/ui/profile_page.dart';
import 'package:prokemn_app/feature/regions/ui/home_page.dart';

class LobbyPage extends ConsumerStatefulWidget {
  const LobbyPage({super.key});

  @override
  ConsumerState<LobbyPage> createState() => _LobbyPageState();
}

class _LobbyPageState extends ConsumerState<LobbyPage> {
  late final PageController _pageController;
  PokedexNavItem _currentNavItem = PokedexNavItem.pokedex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    SchedulerBinding.instance.addPostFrameCallback(
      (_) => ref.read(lobbyControllerProvider.notifier).initPage(),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNavItemSelected(PokedexNavItem item) {
    final index = item.index;
    if (_pageController.hasClients) {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    setState(() => _currentNavItem = item);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(lobbyControllerProvider).value!;

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: LoadingPage(
        isLoading: state.isLoading,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(
                    () => _currentNavItem = PokedexNavItem.values[index],
                  );
                },
                children: [
                  const HomePage(),
                  const RegionsPage(),
                  const FavoritesPage(),
                  const ProfilePage(),
                ],
              ),
            ),
            PokedexBottomNav(
              currentItem: _currentNavItem,
              onItemSelected: _onNavItemSelected,
            ),
          ],
        ),
      ),
    );
  }

}
