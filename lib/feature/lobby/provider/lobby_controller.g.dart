// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lobby_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LobbyController)
final lobbyControllerProvider = LobbyControllerProvider._();

final class LobbyControllerProvider
    extends $AsyncNotifierProvider<LobbyController, LobbyState> {
  LobbyControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lobbyControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lobbyControllerHash();

  @$internal
  @override
  LobbyController create() => LobbyController();
}

String _$lobbyControllerHash() => r'2ea016535e21773a30d4861fcffe69068fa49c5a';

abstract class _$LobbyController extends $AsyncNotifier<LobbyState> {
  FutureOr<LobbyState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<LobbyState>, LobbyState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<LobbyState>, LobbyState>,
              AsyncValue<LobbyState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
