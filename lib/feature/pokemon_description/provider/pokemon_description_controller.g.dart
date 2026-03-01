// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_description_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokemonDescriptionController)
final pokemonDescriptionControllerProvider =
    PokemonDescriptionControllerFamily._();

final class PokemonDescriptionControllerProvider
    extends
        $AsyncNotifierProvider<
          PokemonDescriptionController,
          PokemonDescriptionState
        > {
  PokemonDescriptionControllerProvider._({
    required PokemonDescriptionControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pokemonDescriptionControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonDescriptionControllerHash();

  @override
  String toString() {
    return r'pokemonDescriptionControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PokemonDescriptionController create() => PokemonDescriptionController();

  @override
  bool operator ==(Object other) {
    return other is PokemonDescriptionControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonDescriptionControllerHash() =>
    r'b78cb0b001385fe726622c60359b2e7eb996a540';

final class PokemonDescriptionControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PokemonDescriptionController,
          AsyncValue<PokemonDescriptionState>,
          PokemonDescriptionState,
          FutureOr<PokemonDescriptionState>,
          int
        > {
  PokemonDescriptionControllerFamily._()
    : super(
        retry: null,
        name: r'pokemonDescriptionControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PokemonDescriptionControllerProvider call(int pokemonId) =>
      PokemonDescriptionControllerProvider._(argument: pokemonId, from: this);

  @override
  String toString() => r'pokemonDescriptionControllerProvider';
}

abstract class _$PokemonDescriptionController
    extends $AsyncNotifier<PokemonDescriptionState> {
  late final _$args = ref.$arg as int;
  int get pokemonId => _$args;

  FutureOr<PokemonDescriptionState> build(int pokemonId);
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<PokemonDescriptionState>,
              PokemonDescriptionState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<PokemonDescriptionState>,
                PokemonDescriptionState
              >,
              AsyncValue<PokemonDescriptionState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, () => build(_$args));
  }
}
