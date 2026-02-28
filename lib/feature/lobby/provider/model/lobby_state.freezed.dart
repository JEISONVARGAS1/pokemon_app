// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lobby_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LobbyState {

 int get indexPage; bool get isLoading;
/// Create a copy of LobbyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LobbyStateCopyWith<LobbyState> get copyWith => _$LobbyStateCopyWithImpl<LobbyState>(this as LobbyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LobbyState&&(identical(other.indexPage, indexPage) || other.indexPage == indexPage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,indexPage,isLoading);

@override
String toString() {
  return 'LobbyState(indexPage: $indexPage, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $LobbyStateCopyWith<$Res>  {
  factory $LobbyStateCopyWith(LobbyState value, $Res Function(LobbyState) _then) = _$LobbyStateCopyWithImpl;
@useResult
$Res call({
 int indexPage, bool isLoading
});




}
/// @nodoc
class _$LobbyStateCopyWithImpl<$Res>
    implements $LobbyStateCopyWith<$Res> {
  _$LobbyStateCopyWithImpl(this._self, this._then);

  final LobbyState _self;
  final $Res Function(LobbyState) _then;

/// Create a copy of LobbyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? indexPage = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
indexPage: null == indexPage ? _self.indexPage : indexPage // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LobbyState].
extension LobbyStatePatterns on LobbyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( LobbyStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case LobbyStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( LobbyStateData value)  $default,){
final _that = this;
switch (_that) {
case LobbyStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( LobbyStateData value)?  $default,){
final _that = this;
switch (_that) {
case LobbyStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int indexPage,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case LobbyStateData() when $default != null:
return $default(_that.indexPage,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int indexPage,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case LobbyStateData():
return $default(_that.indexPage,_that.isLoading);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int indexPage,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case LobbyStateData() when $default != null:
return $default(_that.indexPage,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class LobbyStateData implements LobbyState {
  const LobbyStateData({this.indexPage = 0, this.isLoading = false});
  

@override@JsonKey() final  int indexPage;
@override@JsonKey() final  bool isLoading;

/// Create a copy of LobbyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LobbyStateDataCopyWith<LobbyStateData> get copyWith => _$LobbyStateDataCopyWithImpl<LobbyStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LobbyStateData&&(identical(other.indexPage, indexPage) || other.indexPage == indexPage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,indexPage,isLoading);

@override
String toString() {
  return 'LobbyState(indexPage: $indexPage, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $LobbyStateDataCopyWith<$Res> implements $LobbyStateCopyWith<$Res> {
  factory $LobbyStateDataCopyWith(LobbyStateData value, $Res Function(LobbyStateData) _then) = _$LobbyStateDataCopyWithImpl;
@override @useResult
$Res call({
 int indexPage, bool isLoading
});




}
/// @nodoc
class _$LobbyStateDataCopyWithImpl<$Res>
    implements $LobbyStateDataCopyWith<$Res> {
  _$LobbyStateDataCopyWithImpl(this._self, this._then);

  final LobbyStateData _self;
  final $Res Function(LobbyStateData) _then;

/// Create a copy of LobbyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? indexPage = null,Object? isLoading = null,}) {
  return _then(LobbyStateData(
indexPage: null == indexPage ? _self.indexPage : indexPage // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
