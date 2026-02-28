// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoritesState {

 bool get isLoading; String get searchQuery; Set<int> get favorites; List<PokemonModel> get pokemonList; TextEditingController get searchController;
/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateCopyWith<FavoritesState> get copyWith => _$FavoritesStateCopyWithImpl<FavoritesState>(this as FavoritesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.favorites, favorites)&&const DeepCollectionEquality().equals(other.pokemonList, pokemonList)&&(identical(other.searchController, searchController) || other.searchController == searchController));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,searchQuery,const DeepCollectionEquality().hash(favorites),const DeepCollectionEquality().hash(pokemonList),searchController);

@override
String toString() {
  return 'FavoritesState(isLoading: $isLoading, searchQuery: $searchQuery, favorites: $favorites, pokemonList: $pokemonList, searchController: $searchController)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateCopyWith<$Res>  {
  factory $FavoritesStateCopyWith(FavoritesState value, $Res Function(FavoritesState) _then) = _$FavoritesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String searchQuery, Set<int> favorites, List<PokemonModel> pokemonList, TextEditingController searchController
});




}
/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._self, this._then);

  final FavoritesState _self;
  final $Res Function(FavoritesState) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? searchQuery = null,Object? favorites = null,Object? pokemonList = null,Object? searchController = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as Set<int>,pokemonList: null == pokemonList ? _self.pokemonList : pokemonList // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( FavoritesStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case FavoritesStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( FavoritesStateData value)  $default,){
final _that = this;
switch (_that) {
case FavoritesStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( FavoritesStateData value)?  $default,){
final _that = this;
switch (_that) {
case FavoritesStateData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String searchQuery,  Set<int> favorites,  List<PokemonModel> pokemonList,  TextEditingController searchController)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case FavoritesStateData() when $default != null:
return $default(_that.isLoading,_that.searchQuery,_that.favorites,_that.pokemonList,_that.searchController);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String searchQuery,  Set<int> favorites,  List<PokemonModel> pokemonList,  TextEditingController searchController)  $default,) {final _that = this;
switch (_that) {
case FavoritesStateData():
return $default(_that.isLoading,_that.searchQuery,_that.favorites,_that.pokemonList,_that.searchController);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String searchQuery,  Set<int> favorites,  List<PokemonModel> pokemonList,  TextEditingController searchController)?  $default,) {final _that = this;
switch (_that) {
case FavoritesStateData() when $default != null:
return $default(_that.isLoading,_that.searchQuery,_that.favorites,_that.pokemonList,_that.searchController);case _:
  return null;

}
}

}

/// @nodoc


class FavoritesStateData implements FavoritesState {
  const FavoritesStateData({this.isLoading = false, this.searchQuery = '', final  Set<int> favorites = const {}, final  List<PokemonModel> pokemonList = const [], required this.searchController}): _favorites = favorites,_pokemonList = pokemonList;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String searchQuery;
 final  Set<int> _favorites;
@override@JsonKey() Set<int> get favorites {
  if (_favorites is EqualUnmodifiableSetView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_favorites);
}

 final  List<PokemonModel> _pokemonList;
@override@JsonKey() List<PokemonModel> get pokemonList {
  if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemonList);
}

@override final  TextEditingController searchController;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoritesStateDataCopyWith<FavoritesStateData> get copyWith => _$FavoritesStateDataCopyWithImpl<FavoritesStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoritesStateData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._favorites, _favorites)&&const DeepCollectionEquality().equals(other._pokemonList, _pokemonList)&&(identical(other.searchController, searchController) || other.searchController == searchController));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,searchQuery,const DeepCollectionEquality().hash(_favorites),const DeepCollectionEquality().hash(_pokemonList),searchController);

@override
String toString() {
  return 'FavoritesState(isLoading: $isLoading, searchQuery: $searchQuery, favorites: $favorites, pokemonList: $pokemonList, searchController: $searchController)';
}


}

/// @nodoc
abstract mixin class $FavoritesStateDataCopyWith<$Res> implements $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateDataCopyWith(FavoritesStateData value, $Res Function(FavoritesStateData) _then) = _$FavoritesStateDataCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String searchQuery, Set<int> favorites, List<PokemonModel> pokemonList, TextEditingController searchController
});




}
/// @nodoc
class _$FavoritesStateDataCopyWithImpl<$Res>
    implements $FavoritesStateDataCopyWith<$Res> {
  _$FavoritesStateDataCopyWithImpl(this._self, this._then);

  final FavoritesStateData _self;
  final $Res Function(FavoritesStateData) _then;

/// Create a copy of FavoritesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? searchQuery = null,Object? favorites = null,Object? pokemonList = null,Object? searchController = null,}) {
  return _then(FavoritesStateData(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,favorites: null == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as Set<int>,pokemonList: null == pokemonList ? _self._pokemonList : pokemonList // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,
  ));
}


}

// dart format on
