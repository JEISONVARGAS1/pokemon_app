// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'run_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppRunState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppRunState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRunState()';
}


}

/// @nodoc
class $AppRunStateCopyWith<$Res>  {
$AppRunStateCopyWith(AppRunState _, $Res Function(AppRunState) __);
}


/// Adds pattern-matching-related methods to [AppRunState].
extension AppRunStatePatterns on AppRunState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AppLoadingState value)?  loading,TResult Function( AppReadyState value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AppLoadingState() when loading != null:
return loading(_that);case AppReadyState() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AppLoadingState value)  loading,required TResult Function( AppReadyState value)  ready,}){
final _that = this;
switch (_that) {
case AppLoadingState():
return loading(_that);case AppReadyState():
return ready(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AppLoadingState value)?  loading,TResult? Function( AppReadyState value)?  ready,}){
final _that = this;
switch (_that) {
case AppLoadingState() when loading != null:
return loading(_that);case AppReadyState() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AppLoadingState() when loading != null:
return loading();case AppReadyState() when ready != null:
return ready();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  ready,}) {final _that = this;
switch (_that) {
case AppLoadingState():
return loading();case AppReadyState():
return ready();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  ready,}) {final _that = this;
switch (_that) {
case AppLoadingState() when loading != null:
return loading();case AppReadyState() when ready != null:
return ready();case _:
  return null;

}
}

}

/// @nodoc


class AppLoadingState extends AppRunState {
  const AppLoadingState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRunState.loading()';
}


}




/// @nodoc


class AppReadyState extends AppRunState {
  const AppReadyState(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppReadyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppRunState.ready()';
}


}




// dart format on
