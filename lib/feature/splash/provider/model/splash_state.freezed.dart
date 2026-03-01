// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashState {

 Animation<double>? get logoFade; Animation<double>? get logoScale; double get logoWidth; double get logoHeight; AnimationController? get bgController; AnimationController? get logoController;
/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateCopyWith<SplashState> get copyWith => _$SplashStateCopyWithImpl<SplashState>(this as SplashState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState&&(identical(other.logoFade, logoFade) || other.logoFade == logoFade)&&(identical(other.logoScale, logoScale) || other.logoScale == logoScale)&&(identical(other.logoWidth, logoWidth) || other.logoWidth == logoWidth)&&(identical(other.logoHeight, logoHeight) || other.logoHeight == logoHeight)&&(identical(other.bgController, bgController) || other.bgController == bgController)&&(identical(other.logoController, logoController) || other.logoController == logoController));
}


@override
int get hashCode => Object.hash(runtimeType,logoFade,logoScale,logoWidth,logoHeight,bgController,logoController);

@override
String toString() {
  return 'SplashState(logoFade: $logoFade, logoScale: $logoScale, logoWidth: $logoWidth, logoHeight: $logoHeight, bgController: $bgController, logoController: $logoController)';
}


}

/// @nodoc
abstract mixin class $SplashStateCopyWith<$Res>  {
  factory $SplashStateCopyWith(SplashState value, $Res Function(SplashState) _then) = _$SplashStateCopyWithImpl;
@useResult
$Res call({
 Animation<double>? logoFade, Animation<double>? logoScale, double logoWidth, double logoHeight, AnimationController? bgController, AnimationController? logoController
});




}
/// @nodoc
class _$SplashStateCopyWithImpl<$Res>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._self, this._then);

  final SplashState _self;
  final $Res Function(SplashState) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logoFade = freezed,Object? logoScale = freezed,Object? logoWidth = null,Object? logoHeight = null,Object? bgController = freezed,Object? logoController = freezed,}) {
  return _then(_self.copyWith(
logoFade: freezed == logoFade ? _self.logoFade : logoFade // ignore: cast_nullable_to_non_nullable
as Animation<double>?,logoScale: freezed == logoScale ? _self.logoScale : logoScale // ignore: cast_nullable_to_non_nullable
as Animation<double>?,logoWidth: null == logoWidth ? _self.logoWidth : logoWidth // ignore: cast_nullable_to_non_nullable
as double,logoHeight: null == logoHeight ? _self.logoHeight : logoHeight // ignore: cast_nullable_to_non_nullable
as double,bgController: freezed == bgController ? _self.bgController : bgController // ignore: cast_nullable_to_non_nullable
as AnimationController?,logoController: freezed == logoController ? _self.logoController : logoController // ignore: cast_nullable_to_non_nullable
as AnimationController?,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( SplashStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case SplashStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( SplashStateData value)  $default,){
final _that = this;
switch (_that) {
case SplashStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( SplashStateData value)?  $default,){
final _that = this;
switch (_that) {
case SplashStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Animation<double>? logoFade,  Animation<double>? logoScale,  double logoWidth,  double logoHeight,  AnimationController? bgController,  AnimationController? logoController)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case SplashStateData() when $default != null:
return $default(_that.logoFade,_that.logoScale,_that.logoWidth,_that.logoHeight,_that.bgController,_that.logoController);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Animation<double>? logoFade,  Animation<double>? logoScale,  double logoWidth,  double logoHeight,  AnimationController? bgController,  AnimationController? logoController)  $default,) {final _that = this;
switch (_that) {
case SplashStateData():
return $default(_that.logoFade,_that.logoScale,_that.logoWidth,_that.logoHeight,_that.bgController,_that.logoController);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Animation<double>? logoFade,  Animation<double>? logoScale,  double logoWidth,  double logoHeight,  AnimationController? bgController,  AnimationController? logoController)?  $default,) {final _that = this;
switch (_that) {
case SplashStateData() when $default != null:
return $default(_that.logoFade,_that.logoScale,_that.logoWidth,_that.logoHeight,_that.bgController,_that.logoController);case _:
  return null;

}
}

}

/// @nodoc


class SplashStateData implements SplashState {
  const SplashStateData({this.logoFade, this.logoScale, this.logoWidth = 300, this.logoHeight = 300, this.bgController, this.logoController});
  

@override final  Animation<double>? logoFade;
@override final  Animation<double>? logoScale;
@override@JsonKey() final  double logoWidth;
@override@JsonKey() final  double logoHeight;
@override final  AnimationController? bgController;
@override final  AnimationController? logoController;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashStateDataCopyWith<SplashStateData> get copyWith => _$SplashStateDataCopyWithImpl<SplashStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashStateData&&(identical(other.logoFade, logoFade) || other.logoFade == logoFade)&&(identical(other.logoScale, logoScale) || other.logoScale == logoScale)&&(identical(other.logoWidth, logoWidth) || other.logoWidth == logoWidth)&&(identical(other.logoHeight, logoHeight) || other.logoHeight == logoHeight)&&(identical(other.bgController, bgController) || other.bgController == bgController)&&(identical(other.logoController, logoController) || other.logoController == logoController));
}


@override
int get hashCode => Object.hash(runtimeType,logoFade,logoScale,logoWidth,logoHeight,bgController,logoController);

@override
String toString() {
  return 'SplashState(logoFade: $logoFade, logoScale: $logoScale, logoWidth: $logoWidth, logoHeight: $logoHeight, bgController: $bgController, logoController: $logoController)';
}


}

/// @nodoc
abstract mixin class $SplashStateDataCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory $SplashStateDataCopyWith(SplashStateData value, $Res Function(SplashStateData) _then) = _$SplashStateDataCopyWithImpl;
@override @useResult
$Res call({
 Animation<double>? logoFade, Animation<double>? logoScale, double logoWidth, double logoHeight, AnimationController? bgController, AnimationController? logoController
});




}
/// @nodoc
class _$SplashStateDataCopyWithImpl<$Res>
    implements $SplashStateDataCopyWith<$Res> {
  _$SplashStateDataCopyWithImpl(this._self, this._then);

  final SplashStateData _self;
  final $Res Function(SplashStateData) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logoFade = freezed,Object? logoScale = freezed,Object? logoWidth = null,Object? logoHeight = null,Object? bgController = freezed,Object? logoController = freezed,}) {
  return _then(SplashStateData(
logoFade: freezed == logoFade ? _self.logoFade : logoFade // ignore: cast_nullable_to_non_nullable
as Animation<double>?,logoScale: freezed == logoScale ? _self.logoScale : logoScale // ignore: cast_nullable_to_non_nullable
as Animation<double>?,logoWidth: null == logoWidth ? _self.logoWidth : logoWidth // ignore: cast_nullable_to_non_nullable
as double,logoHeight: null == logoHeight ? _self.logoHeight : logoHeight // ignore: cast_nullable_to_non_nullable
as double,bgController: freezed == bgController ? _self.bgController : bgController // ignore: cast_nullable_to_non_nullable
as AnimationController?,logoController: freezed == logoController ? _self.logoController : logoController // ignore: cast_nullable_to_non_nullable
as AnimationController?,
  ));
}


}

// dart format on
