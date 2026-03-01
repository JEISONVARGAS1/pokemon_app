import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/core/widget/loading_page.dart';
import 'package:prokemn_app/feature/pokemon_description/ui/widgets/type_chip.dart';
import 'package:prokemn_app/feature/pokemon_description/ui/widgets/stats_grid.dart';
import 'package:prokemn_app/feature/pokemon_description/ui/widgets/custom_header.dart';
import 'package:prokemn_app/feature/pokemon_description/ui/widgets/gender_section.dart';
import 'package:prokemn_app/feature/pokemon_description/provider/pokemon_description_controller.dart';

class PokemonDescriptionPage extends ConsumerStatefulWidget {
  const PokemonDescriptionPage({super.key, required this.pokemonId});

  final int pokemonId;

  @override
  ConsumerState<PokemonDescriptionPage> createState() =>
      _PokemonDescriptionPageState();
}

class _PokemonDescriptionPageState
    extends ConsumerState<PokemonDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final pokemonRiverpod = pokemonDescriptionControllerProvider(
      widget.pokemonId,
    );

    final state = ref.watch(pokemonRiverpod).value!;
    final controller = ref.read(pokemonRiverpod.notifier);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: state.detail.pokemon.name.isEmpty
          ? LoadingPage(isLoading: true, child: SizedBox.shrink())
          : LoadingPage(
              isLoading: state.isLoading,
              child: CustomScrollView(
                controller: state.scrollController,
                slivers: [
                  SliverAppBar(
                    pinned: true,
                    expandedHeight: state.expandedHeight,
                    backgroundColor: controller.headerColor(),
                    title: ValueListenableBuilder<bool>(
                      valueListenable: state.showTitleNotifier,
                      builder: (context, showTitle, _) => AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: showTitle
                            ? Text(
                                state.detail.pokemon.formattedName,
                                key: const ValueKey('title'),
                                style: AppTypography.h4.copyWith(
                                  color: AppColors.textPrimary,
                                ),
                              )
                            : const SizedBox.shrink(
                                key: ValueKey('empty-title'),
                              ),
                      ),
                    ),
                    centerTitle: false,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.textSecondary,
                      ),
                      onPressed: () => context.pop(),
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(
                          state.isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: state.isFavorite
                              ? Colors.red
                              : AppColors.textSecondary,
                        ),
                        onPressed: controller.toggleFavorite,
                      ),
                    ],
                    flexibleSpace: FlexibleSpaceBar(
                      background: CustomHeader(pokemon: state.detail),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: .all(AppSpacing.lg),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            state.detail.pokemon.formattedName,
                            style: AppTypography.h1,
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            state.detail.pokemon.pokedexNumber,
                            style: AppTypography.bodyMedium,
                          ),
                          const SizedBox(height: AppSpacing.xxl),
                          Wrap(
                            spacing: AppSpacing.sm,
                            runSpacing: AppSpacing.sm,
                            children: state.detail.pokemon.types
                                .map((t) => TypeChip(typeKey: t.key))
                                .toList(),
                          ),
                          const SizedBox(height: AppSpacing.lg),
                          Text(
                            state.detail.description,
                            style: AppTypography.bodyMedium.copyWith(
                              color: AppColors.textSecondary,
                            ),
                          ),
                          const SizedBox(height: AppSpacing.lg),
                          Divider(
                            thickness: 0.8,
                            color: AppColors.textTertiary,
                          ),
                          StatsGrid(detail: state.detail),
                          const SizedBox(height: AppSpacing.xl),
                          GenderSection(detail: state.detail),
                          const SizedBox(height: AppSpacing.xl),
                          Text('Debilidades', style: AppTypography.h4),
                          const SizedBox(height: AppSpacing.md),
                          Wrap(
                            spacing: AppSpacing.sm,
                            runSpacing: AppSpacing.sm,
                            children: state.detail.weaknesses
                                .map((w) => TypeChip(typeKey: w))
                                .toList(),
                          ),

                          const SizedBox(height: AppSpacing.xxl),
                          const SizedBox(height: AppSpacing.xxl),
                          const SizedBox(height: AppSpacing.xxl),
                          const SizedBox(height: AppSpacing.xxl),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
