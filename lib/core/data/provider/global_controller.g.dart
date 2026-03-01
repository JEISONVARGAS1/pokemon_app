// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GlobalController)
final globalControllerProvider = GlobalControllerProvider._();

final class GlobalControllerProvider
    extends $AsyncNotifierProvider<GlobalController, GlobalState> {
  GlobalControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'globalControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$globalControllerHash();

  @$internal
  @override
  GlobalController create() => GlobalController();
}

String _$globalControllerHash() => r'78fa46f3ecdaa907338c79743c6ba631aeb142fb';

abstract class _$GlobalController extends $AsyncNotifier<GlobalState> {
  FutureOr<GlobalState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<GlobalState>, GlobalState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GlobalState>, GlobalState>,
              AsyncValue<GlobalState>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
