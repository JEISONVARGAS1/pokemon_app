// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_description_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonDescriptionState {

 bool get isLoading; bool get isFavorite; String get errorMessage; PokemonDetailModel get detail; double get expandedHeight; ScrollController get scrollController; ValueNotifier<bool> get showTitleNotifier;
/// Create a copy of PokemonDescriptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDescriptionStateCopyWith<PokemonDescriptionState> get copyWith => _$PokemonDescriptionStateCopyWithImpl<PokemonDescriptionState>(this as PokemonDescriptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDescriptionState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.expandedHeight, expandedHeight) || other.expandedHeight == expandedHeight)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController)&&(identical(other.showTitleNotifier, showTitleNotifier) || other.showTitleNotifier == showTitleNotifier));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFavorite,errorMessage,detail,expandedHeight,scrollController,showTitleNotifier);

@override
String toString() {
  return 'PokemonDescriptionState(isLoading: $isLoading, isFavorite: $isFavorite, errorMessage: $errorMessage, detail: $detail, expandedHeight: $expandedHeight, scrollController: $scrollController, showTitleNotifier: $showTitleNotifier)';
}


}

/// @nodoc
abstract mixin class $PokemonDescriptionStateCopyWith<$Res>  {
  factory $PokemonDescriptionStateCopyWith(PokemonDescriptionState value, $Res Function(PokemonDescriptionState) _then) = _$PokemonDescriptionStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isFavorite, String errorMessage, PokemonDetailModel detail, double expandedHeight, ScrollController scrollController, ValueNotifier<bool> showTitleNotifier
});




}
/// @nodoc
class _$PokemonDescriptionStateCopyWithImpl<$Res>
    implements $PokemonDescriptionStateCopyWith<$Res> {
  _$PokemonDescriptionStateCopyWithImpl(this._self, this._then);

  final PokemonDescriptionState _self;
  final $Res Function(PokemonDescriptionState) _then;

/// Create a copy of PokemonDescriptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isFavorite = null,Object? errorMessage = null,Object? detail = null,Object? expandedHeight = null,Object? scrollController = null,Object? showTitleNotifier = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as PokemonDetailModel,expandedHeight: null == expandedHeight ? _self.expandedHeight : expandedHeight // ignore: cast_nullable_to_non_nullable
as double,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,showTitleNotifier: null == showTitleNotifier ? _self.showTitleNotifier : showTitleNotifier // ignore: cast_nullable_to_non_nullable
as ValueNotifier<bool>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonDescriptionState].
extension PokemonDescriptionStatePatterns on PokemonDescriptionState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( PokemonDescriptionStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case PokemonDescriptionStateData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( PokemonDescriptionStateData value)  $default,){
final _that = this;
switch (_that) {
case PokemonDescriptionStateData():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( PokemonDescriptionStateData value)?  $default,){
final _that = this;
switch (_that) {
case PokemonDescriptionStateData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isFavorite,  String errorMessage,  PokemonDetailModel detail,  double expandedHeight,  ScrollController scrollController,  ValueNotifier<bool> showTitleNotifier)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case PokemonDescriptionStateData() when $default != null:
return $default(_that.isLoading,_that.isFavorite,_that.errorMessage,_that.detail,_that.expandedHeight,_that.scrollController,_that.showTitleNotifier);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isFavorite,  String errorMessage,  PokemonDetailModel detail,  double expandedHeight,  ScrollController scrollController,  ValueNotifier<bool> showTitleNotifier)  $default,) {final _that = this;
switch (_that) {
case PokemonDescriptionStateData():
return $default(_that.isLoading,_that.isFavorite,_that.errorMessage,_that.detail,_that.expandedHeight,_that.scrollController,_that.showTitleNotifier);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isFavorite,  String errorMessage,  PokemonDetailModel detail,  double expandedHeight,  ScrollController scrollController,  ValueNotifier<bool> showTitleNotifier)?  $default,) {final _that = this;
switch (_that) {
case PokemonDescriptionStateData() when $default != null:
return $default(_that.isLoading,_that.isFavorite,_that.errorMessage,_that.detail,_that.expandedHeight,_that.scrollController,_that.showTitleNotifier);case _:
  return null;

}
}

}

/// @nodoc


class PokemonDescriptionStateData implements PokemonDescriptionState {
  const PokemonDescriptionStateData({this.isLoading = false, this.isFavorite = false, this.errorMessage = '', required this.detail, this.expandedHeight = 320.0, required this.scrollController, required this.showTitleNotifier});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  String errorMessage;
@override final  PokemonDetailModel detail;
@override@JsonKey() final  double expandedHeight;
@override final  ScrollController scrollController;
@override final  ValueNotifier<bool> showTitleNotifier;

/// Create a copy of PokemonDescriptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDescriptionStateDataCopyWith<PokemonDescriptionStateData> get copyWith => _$PokemonDescriptionStateDataCopyWithImpl<PokemonDescriptionStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDescriptionStateData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.expandedHeight, expandedHeight) || other.expandedHeight == expandedHeight)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController)&&(identical(other.showTitleNotifier, showTitleNotifier) || other.showTitleNotifier == showTitleNotifier));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isFavorite,errorMessage,detail,expandedHeight,scrollController,showTitleNotifier);

@override
String toString() {
  return 'PokemonDescriptionState(isLoading: $isLoading, isFavorite: $isFavorite, errorMessage: $errorMessage, detail: $detail, expandedHeight: $expandedHeight, scrollController: $scrollController, showTitleNotifier: $showTitleNotifier)';
}


}

/// @nodoc
abstract mixin class $PokemonDescriptionStateDataCopyWith<$Res> implements $PokemonDescriptionStateCopyWith<$Res> {
  factory $PokemonDescriptionStateDataCopyWith(PokemonDescriptionStateData value, $Res Function(PokemonDescriptionStateData) _then) = _$PokemonDescriptionStateDataCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isFavorite, String errorMessage, PokemonDetailModel detail, double expandedHeight, ScrollController scrollController, ValueNotifier<bool> showTitleNotifier
});




}
/// @nodoc
class _$PokemonDescriptionStateDataCopyWithImpl<$Res>
    implements $PokemonDescriptionStateDataCopyWith<$Res> {
  _$PokemonDescriptionStateDataCopyWithImpl(this._self, this._then);

  final PokemonDescriptionStateData _self;
  final $Res Function(PokemonDescriptionStateData) _then;

/// Create a copy of PokemonDescriptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isFavorite = null,Object? errorMessage = null,Object? detail = null,Object? expandedHeight = null,Object? scrollController = null,Object? showTitleNotifier = null,}) {
  return _then(PokemonDescriptionStateData(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as PokemonDetailModel,expandedHeight: null == expandedHeight ? _self.expandedHeight : expandedHeight // ignore: cast_nullable_to_non_nullable
as double,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,showTitleNotifier: null == showTitleNotifier ? _self.showTitleNotifier : showTitleNotifier // ignore: cast_nullable_to_non_nullable
as ValueNotifier<bool>,
  ));
}


}

// dart format on
