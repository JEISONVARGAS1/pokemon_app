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

 int get page; bool get isLoading; String get searchQuery; Set<int> get favorites; bool get isFiltering; DebouncerUtil get debouncer; String get errorMessage; bool get hasReachedEnd; bool get isLoadingNextPage; Set<String> get selectedTypes; PanelController get panelController; ScrollController get scrollController; List<PokemonModel> get pokemonList; TextEditingController get searchController; List<PokemonModel> get pokemonListFiltered;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.page, page) || other.page == page)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other.favorites, favorites)&&(identical(other.isFiltering, isFiltering) || other.isFiltering == isFiltering)&&(identical(other.debouncer, debouncer) || other.debouncer == debouncer)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.hasReachedEnd, hasReachedEnd) || other.hasReachedEnd == hasReachedEnd)&&(identical(other.isLoadingNextPage, isLoadingNextPage) || other.isLoadingNextPage == isLoadingNextPage)&&const DeepCollectionEquality().equals(other.selectedTypes, selectedTypes)&&(identical(other.panelController, panelController) || other.panelController == panelController)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController)&&const DeepCollectionEquality().equals(other.pokemonList, pokemonList)&&(identical(other.searchController, searchController) || other.searchController == searchController)&&const DeepCollectionEquality().equals(other.pokemonListFiltered, pokemonListFiltered));
}


@override
int get hashCode => Object.hash(runtimeType,page,isLoading,searchQuery,const DeepCollectionEquality().hash(favorites),isFiltering,debouncer,errorMessage,hasReachedEnd,isLoadingNextPage,const DeepCollectionEquality().hash(selectedTypes),panelController,scrollController,const DeepCollectionEquality().hash(pokemonList),searchController,const DeepCollectionEquality().hash(pokemonListFiltered));

@override
String toString() {
  return 'HomeState(page: $page, isLoading: $isLoading, searchQuery: $searchQuery, favorites: $favorites, isFiltering: $isFiltering, debouncer: $debouncer, errorMessage: $errorMessage, hasReachedEnd: $hasReachedEnd, isLoadingNextPage: $isLoadingNextPage, selectedTypes: $selectedTypes, panelController: $panelController, scrollController: $scrollController, pokemonList: $pokemonList, searchController: $searchController, pokemonListFiltered: $pokemonListFiltered)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 int page, bool isLoading, String searchQuery, Set<int> favorites, bool isFiltering, DebouncerUtil debouncer, String errorMessage, bool hasReachedEnd, bool isLoadingNextPage, Set<String> selectedTypes, PanelController panelController, ScrollController scrollController, List<PokemonModel> pokemonList, TextEditingController searchController, List<PokemonModel> pokemonListFiltered
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
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? isLoading = null,Object? searchQuery = null,Object? favorites = null,Object? isFiltering = null,Object? debouncer = null,Object? errorMessage = null,Object? hasReachedEnd = null,Object? isLoadingNextPage = null,Object? selectedTypes = null,Object? panelController = null,Object? scrollController = null,Object? pokemonList = null,Object? searchController = null,Object? pokemonListFiltered = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,favorites: null == favorites ? _self.favorites : favorites // ignore: cast_nullable_to_non_nullable
as Set<int>,isFiltering: null == isFiltering ? _self.isFiltering : isFiltering // ignore: cast_nullable_to_non_nullable
as bool,debouncer: null == debouncer ? _self.debouncer : debouncer // ignore: cast_nullable_to_non_nullable
as DebouncerUtil,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,hasReachedEnd: null == hasReachedEnd ? _self.hasReachedEnd : hasReachedEnd // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNextPage: null == isLoadingNextPage ? _self.isLoadingNextPage : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
as bool,selectedTypes: null == selectedTypes ? _self.selectedTypes : selectedTypes // ignore: cast_nullable_to_non_nullable
as Set<String>,panelController: null == panelController ? _self.panelController : panelController // ignore: cast_nullable_to_non_nullable
as PanelController,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,pokemonList: null == pokemonList ? _self.pokemonList : pokemonList // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,pokemonListFiltered: null == pokemonListFiltered ? _self.pokemonListFiltered : pokemonListFiltered // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  bool isLoading,  String searchQuery,  Set<int> favorites,  bool isFiltering,  DebouncerUtil debouncer,  String errorMessage,  bool hasReachedEnd,  bool isLoadingNextPage,  Set<String> selectedTypes,  PanelController panelController,  ScrollController scrollController,  List<PokemonModel> pokemonList,  TextEditingController searchController,  List<PokemonModel> pokemonListFiltered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeStateData() when $default != null:
return $default(_that.page,_that.isLoading,_that.searchQuery,_that.favorites,_that.isFiltering,_that.debouncer,_that.errorMessage,_that.hasReachedEnd,_that.isLoadingNextPage,_that.selectedTypes,_that.panelController,_that.scrollController,_that.pokemonList,_that.searchController,_that.pokemonListFiltered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  bool isLoading,  String searchQuery,  Set<int> favorites,  bool isFiltering,  DebouncerUtil debouncer,  String errorMessage,  bool hasReachedEnd,  bool isLoadingNextPage,  Set<String> selectedTypes,  PanelController panelController,  ScrollController scrollController,  List<PokemonModel> pokemonList,  TextEditingController searchController,  List<PokemonModel> pokemonListFiltered)  $default,) {final _that = this;
switch (_that) {
case HomeStateData():
return $default(_that.page,_that.isLoading,_that.searchQuery,_that.favorites,_that.isFiltering,_that.debouncer,_that.errorMessage,_that.hasReachedEnd,_that.isLoadingNextPage,_that.selectedTypes,_that.panelController,_that.scrollController,_that.pokemonList,_that.searchController,_that.pokemonListFiltered);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  bool isLoading,  String searchQuery,  Set<int> favorites,  bool isFiltering,  DebouncerUtil debouncer,  String errorMessage,  bool hasReachedEnd,  bool isLoadingNextPage,  Set<String> selectedTypes,  PanelController panelController,  ScrollController scrollController,  List<PokemonModel> pokemonList,  TextEditingController searchController,  List<PokemonModel> pokemonListFiltered)?  $default,) {final _that = this;
switch (_that) {
case HomeStateData() when $default != null:
return $default(_that.page,_that.isLoading,_that.searchQuery,_that.favorites,_that.isFiltering,_that.debouncer,_that.errorMessage,_that.hasReachedEnd,_that.isLoadingNextPage,_that.selectedTypes,_that.panelController,_that.scrollController,_that.pokemonList,_that.searchController,_that.pokemonListFiltered);case _:
  return null;

}
}

}

/// @nodoc


class HomeStateData implements HomeState {
  const HomeStateData({this.page = 0, this.isLoading = false, this.searchQuery = '', final  Set<int> favorites = const {}, this.isFiltering = false, required this.debouncer, this.errorMessage = '', this.hasReachedEnd = false, this.isLoadingNextPage = false, final  Set<String> selectedTypes = const {}, required this.panelController, required this.scrollController, final  List<PokemonModel> pokemonList = const [], required this.searchController, final  List<PokemonModel> pokemonListFiltered = const []}): _favorites = favorites,_selectedTypes = selectedTypes,_pokemonList = pokemonList,_pokemonListFiltered = pokemonListFiltered;
  

@override@JsonKey() final  int page;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String searchQuery;
 final  Set<int> _favorites;
@override@JsonKey() Set<int> get favorites {
  if (_favorites is EqualUnmodifiableSetView) return _favorites;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_favorites);
}

@override@JsonKey() final  bool isFiltering;
@override final  DebouncerUtil debouncer;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool hasReachedEnd;
@override@JsonKey() final  bool isLoadingNextPage;
 final  Set<String> _selectedTypes;
@override@JsonKey() Set<String> get selectedTypes {
  if (_selectedTypes is EqualUnmodifiableSetView) return _selectedTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_selectedTypes);
}

@override final  PanelController panelController;
@override final  ScrollController scrollController;
 final  List<PokemonModel> _pokemonList;
@override@JsonKey() List<PokemonModel> get pokemonList {
  if (_pokemonList is EqualUnmodifiableListView) return _pokemonList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemonList);
}

@override final  TextEditingController searchController;
 final  List<PokemonModel> _pokemonListFiltered;
@override@JsonKey() List<PokemonModel> get pokemonListFiltered {
  if (_pokemonListFiltered is EqualUnmodifiableListView) return _pokemonListFiltered;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pokemonListFiltered);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateDataCopyWith<HomeStateData> get copyWith => _$HomeStateDataCopyWithImpl<HomeStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStateData&&(identical(other.page, page) || other.page == page)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&const DeepCollectionEquality().equals(other._favorites, _favorites)&&(identical(other.isFiltering, isFiltering) || other.isFiltering == isFiltering)&&(identical(other.debouncer, debouncer) || other.debouncer == debouncer)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.hasReachedEnd, hasReachedEnd) || other.hasReachedEnd == hasReachedEnd)&&(identical(other.isLoadingNextPage, isLoadingNextPage) || other.isLoadingNextPage == isLoadingNextPage)&&const DeepCollectionEquality().equals(other._selectedTypes, _selectedTypes)&&(identical(other.panelController, panelController) || other.panelController == panelController)&&(identical(other.scrollController, scrollController) || other.scrollController == scrollController)&&const DeepCollectionEquality().equals(other._pokemonList, _pokemonList)&&(identical(other.searchController, searchController) || other.searchController == searchController)&&const DeepCollectionEquality().equals(other._pokemonListFiltered, _pokemonListFiltered));
}


@override
int get hashCode => Object.hash(runtimeType,page,isLoading,searchQuery,const DeepCollectionEquality().hash(_favorites),isFiltering,debouncer,errorMessage,hasReachedEnd,isLoadingNextPage,const DeepCollectionEquality().hash(_selectedTypes),panelController,scrollController,const DeepCollectionEquality().hash(_pokemonList),searchController,const DeepCollectionEquality().hash(_pokemonListFiltered));

@override
String toString() {
  return 'HomeState(page: $page, isLoading: $isLoading, searchQuery: $searchQuery, favorites: $favorites, isFiltering: $isFiltering, debouncer: $debouncer, errorMessage: $errorMessage, hasReachedEnd: $hasReachedEnd, isLoadingNextPage: $isLoadingNextPage, selectedTypes: $selectedTypes, panelController: $panelController, scrollController: $scrollController, pokemonList: $pokemonList, searchController: $searchController, pokemonListFiltered: $pokemonListFiltered)';
}


}

/// @nodoc
abstract mixin class $HomeStateDataCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeStateDataCopyWith(HomeStateData value, $Res Function(HomeStateData) _then) = _$HomeStateDataCopyWithImpl;
@override @useResult
$Res call({
 int page, bool isLoading, String searchQuery, Set<int> favorites, bool isFiltering, DebouncerUtil debouncer, String errorMessage, bool hasReachedEnd, bool isLoadingNextPage, Set<String> selectedTypes, PanelController panelController, ScrollController scrollController, List<PokemonModel> pokemonList, TextEditingController searchController, List<PokemonModel> pokemonListFiltered
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
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? isLoading = null,Object? searchQuery = null,Object? favorites = null,Object? isFiltering = null,Object? debouncer = null,Object? errorMessage = null,Object? hasReachedEnd = null,Object? isLoadingNextPage = null,Object? selectedTypes = null,Object? panelController = null,Object? scrollController = null,Object? pokemonList = null,Object? searchController = null,Object? pokemonListFiltered = null,}) {
  return _then(HomeStateData(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,favorites: null == favorites ? _self._favorites : favorites // ignore: cast_nullable_to_non_nullable
as Set<int>,isFiltering: null == isFiltering ? _self.isFiltering : isFiltering // ignore: cast_nullable_to_non_nullable
as bool,debouncer: null == debouncer ? _self.debouncer : debouncer // ignore: cast_nullable_to_non_nullable
as DebouncerUtil,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,hasReachedEnd: null == hasReachedEnd ? _self.hasReachedEnd : hasReachedEnd // ignore: cast_nullable_to_non_nullable
as bool,isLoadingNextPage: null == isLoadingNextPage ? _self.isLoadingNextPage : isLoadingNextPage // ignore: cast_nullable_to_non_nullable
as bool,selectedTypes: null == selectedTypes ? _self._selectedTypes : selectedTypes // ignore: cast_nullable_to_non_nullable
as Set<String>,panelController: null == panelController ? _self.panelController : panelController // ignore: cast_nullable_to_non_nullable
as PanelController,scrollController: null == scrollController ? _self.scrollController : scrollController // ignore: cast_nullable_to_non_nullable
as ScrollController,pokemonList: null == pokemonList ? _self._pokemonList : pokemonList // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,searchController: null == searchController ? _self.searchController : searchController // ignore: cast_nullable_to_non_nullable
as TextEditingController,pokemonListFiltered: null == pokemonListFiltered ? _self._pokemonListFiltered : pokemonListFiltered // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,
  ));
}


}

// dart format on
