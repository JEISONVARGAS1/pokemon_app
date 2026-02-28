// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 bool get isLoading; String get searchQuery; Set<int> get favorites; List<PokemonModel> get pokemonList; TextEditingController get searchController;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.favorites, favorites)&&const DeepCollectionEquality().equals(other.pokemonList, pokemonList)&&(identical(other.searchController, searchController) || other.searchController == searchController));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,searchQuery,const DeepCollectionEquality().hash(favorites),const DeepCollectionEquality().hash(pokemonList),searchController);

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, searchQuery: $searchQuery, favorites: $favorites, pokemonList: $pokemonList, searchController: $searchController)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String searchQuery, Set<int> favorites, List<PokemonModel> pokemonList, TextEditingController searchController
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
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


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( HomeStateData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeStateData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( HomeStateData value)  $default,){
final _that = this;
switch (_that) {
case HomeStateData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( HomeStateData value)?  $default,){
final _that = this;
switch (_that) {
case HomeStateData() when $default != null:
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
case HomeStateData() when $default != null:
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
case HomeStateData():
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
case HomeStateData() when $default != null:
return $default(_that.isLoading,_that.searchQuery,_that.favorites,_that.pokemonList,_that.searchController);case _:
  return null;

}
}

}

/// @nodoc


class HomeStateData implements HomeState {
  const HomeStateData({this.isLoading = false, this.searchQuery = '', final  Set<int> favorites = const {}, final  List<PokemonModel> pokemonList = const [], required this.searchController}): _favorites = favorites,_pokemonList = pokemonList;
  

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

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateDataCopyWith<HomeStateData> get copyWith => _$HomeStateDataCopyWithImpl<HomeStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateData&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._favorites, _favorites)&&const DeepCollectionEquality().equals(other._pokemonList, _pokemonList)&&(identical(other.searchController, searchController) || other.searchController == searchController));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,searchQuery,const DeepCollectionEquality().hash(_favorites),const DeepCollectionEquality().hash(_pokemonList),searchController);

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, searchQuery: $searchQuery, favorites: $favorites, pokemonList: $pokemonList, searchController: $searchController)';
}


}

/// @nodoc
abstract mixin class $HomeStateDataCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeStateDataCopyWith(HomeStateData value, $Res Function(HomeStateData) _then) = _$HomeStateDataCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String searchQuery, Set<int> favorites, List<PokemonModel> pokemonList, TextEditingController searchController
});




}
/// @nodoc
class _$HomeStateDataCopyWithImpl<$Res>
    implements $HomeStateDataCopyWith<$Res> {
  _$HomeStateDataCopyWithImpl(this._self, this._then);

  final HomeStateData _self;
  final $Res Function(HomeStateData) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? searchQuery = null,Object? favorites = null,Object? pokemonList = null,Object? searchController = null,}) {
  return _then(HomeStateData(
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
