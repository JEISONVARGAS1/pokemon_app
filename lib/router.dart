import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/widget/page_not_found.dart';
import 'package:prokemn_app/feature/home/ui/home_page.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  const initialLocation = '/home';

  return GoRouter(
    initialLocation: initialLocation,
    errorBuilder: (context, state) => PageNotFound(state: state),
    routes: [
      GoRoute(
        name: 'home',
        path: '/home',
        pageBuilder: (context, state) => buildPageWithTransition(HomePage()),
      ),
      GoRoute(
        name: '404',
        path: '/404',
        builder: (context, state) => PageNotFound(state: state),
      ),
    ],
  );
});

Page<dynamic> buildPageWithTransition(Widget child) {
  return CustomTransitionPage(
    transitionDuration: const Duration(milliseconds: 1000),
    key: ValueKey(child.hashCode),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
