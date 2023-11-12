// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'getproduct_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetproductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllProducts,
    required TResult Function(String userId, String category)
        getProductsbyCategory,
    required TResult Function(String query) getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllProducts,
    TResult? Function(String userId, String category)? getProductsbyCategory,
    TResult? Function(String query)? getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllProducts,
    TResult Function(String userId, String category)? getProductsbyCategory,
    TResult Function(String query)? getCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllProducts value) getAllProducts,
    required TResult Function(_getProductsbyCategory value)
        getProductsbyCategory,
    required TResult Function(_getCategories value) getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllProducts value)? getAllProducts,
    TResult? Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult? Function(_getCategories value)? getCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllProducts value)? getAllProducts,
    TResult Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult Function(_getCategories value)? getCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetproductEventCopyWith<$Res> {
  factory $GetproductEventCopyWith(
          GetproductEvent value, $Res Function(GetproductEvent) then) =
      _$GetproductEventCopyWithImpl<$Res, GetproductEvent>;
}

/// @nodoc
class _$GetproductEventCopyWithImpl<$Res, $Val extends GetproductEvent>
    implements $GetproductEventCopyWith<$Res> {
  _$GetproductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getAllProductsImplCopyWith<$Res> {
  factory _$$getAllProductsImplCopyWith(_$getAllProductsImpl value,
          $Res Function(_$getAllProductsImpl) then) =
      __$$getAllProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$getAllProductsImplCopyWithImpl<$Res>
    extends _$GetproductEventCopyWithImpl<$Res, _$getAllProductsImpl>
    implements _$$getAllProductsImplCopyWith<$Res> {
  __$$getAllProductsImplCopyWithImpl(
      _$getAllProductsImpl _value, $Res Function(_$getAllProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$getAllProductsImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getAllProductsImpl implements _getAllProducts {
  const _$getAllProductsImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'GetproductEvent.getAllProducts(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getAllProductsImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getAllProductsImplCopyWith<_$getAllProductsImpl> get copyWith =>
      __$$getAllProductsImplCopyWithImpl<_$getAllProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllProducts,
    required TResult Function(String userId, String category)
        getProductsbyCategory,
    required TResult Function(String query) getCategories,
  }) {
    return getAllProducts(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllProducts,
    TResult? Function(String userId, String category)? getProductsbyCategory,
    TResult? Function(String query)? getCategories,
  }) {
    return getAllProducts?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllProducts,
    TResult Function(String userId, String category)? getProductsbyCategory,
    TResult Function(String query)? getCategories,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllProducts value) getAllProducts,
    required TResult Function(_getProductsbyCategory value)
        getProductsbyCategory,
    required TResult Function(_getCategories value) getCategories,
  }) {
    return getAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllProducts value)? getAllProducts,
    TResult? Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult? Function(_getCategories value)? getCategories,
  }) {
    return getAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllProducts value)? getAllProducts,
    TResult Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult Function(_getCategories value)? getCategories,
    required TResult orElse(),
  }) {
    if (getAllProducts != null) {
      return getAllProducts(this);
    }
    return orElse();
  }
}

abstract class _getAllProducts implements GetproductEvent {
  const factory _getAllProducts({required final String userId}) =
      _$getAllProductsImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$getAllProductsImplCopyWith<_$getAllProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getProductsbyCategoryImplCopyWith<$Res> {
  factory _$$getProductsbyCategoryImplCopyWith(
          _$getProductsbyCategoryImpl value,
          $Res Function(_$getProductsbyCategoryImpl) then) =
      __$$getProductsbyCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String category});
}

/// @nodoc
class __$$getProductsbyCategoryImplCopyWithImpl<$Res>
    extends _$GetproductEventCopyWithImpl<$Res, _$getProductsbyCategoryImpl>
    implements _$$getProductsbyCategoryImplCopyWith<$Res> {
  __$$getProductsbyCategoryImplCopyWithImpl(_$getProductsbyCategoryImpl _value,
      $Res Function(_$getProductsbyCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? category = null,
  }) {
    return _then(_$getProductsbyCategoryImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getProductsbyCategoryImpl implements _getProductsbyCategory {
  const _$getProductsbyCategoryImpl(
      {required this.userId, required this.category});

  @override
  final String userId;
  @override
  final String category;

  @override
  String toString() {
    return 'GetproductEvent.getProductsbyCategory(userId: $userId, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getProductsbyCategoryImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getProductsbyCategoryImplCopyWith<_$getProductsbyCategoryImpl>
      get copyWith => __$$getProductsbyCategoryImplCopyWithImpl<
          _$getProductsbyCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllProducts,
    required TResult Function(String userId, String category)
        getProductsbyCategory,
    required TResult Function(String query) getCategories,
  }) {
    return getProductsbyCategory(userId, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllProducts,
    TResult? Function(String userId, String category)? getProductsbyCategory,
    TResult? Function(String query)? getCategories,
  }) {
    return getProductsbyCategory?.call(userId, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllProducts,
    TResult Function(String userId, String category)? getProductsbyCategory,
    TResult Function(String query)? getCategories,
    required TResult orElse(),
  }) {
    if (getProductsbyCategory != null) {
      return getProductsbyCategory(userId, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllProducts value) getAllProducts,
    required TResult Function(_getProductsbyCategory value)
        getProductsbyCategory,
    required TResult Function(_getCategories value) getCategories,
  }) {
    return getProductsbyCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllProducts value)? getAllProducts,
    TResult? Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult? Function(_getCategories value)? getCategories,
  }) {
    return getProductsbyCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllProducts value)? getAllProducts,
    TResult Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult Function(_getCategories value)? getCategories,
    required TResult orElse(),
  }) {
    if (getProductsbyCategory != null) {
      return getProductsbyCategory(this);
    }
    return orElse();
  }
}

abstract class _getProductsbyCategory implements GetproductEvent {
  const factory _getProductsbyCategory(
      {required final String userId,
      required final String category}) = _$getProductsbyCategoryImpl;

  String get userId;
  String get category;
  @JsonKey(ignore: true)
  _$$getProductsbyCategoryImplCopyWith<_$getProductsbyCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCategoriesImplCopyWith<$Res> {
  factory _$$getCategoriesImplCopyWith(
          _$getCategoriesImpl value, $Res Function(_$getCategoriesImpl) then) =
      __$$getCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$getCategoriesImplCopyWithImpl<$Res>
    extends _$GetproductEventCopyWithImpl<$Res, _$getCategoriesImpl>
    implements _$$getCategoriesImplCopyWith<$Res> {
  __$$getCategoriesImplCopyWithImpl(
      _$getCategoriesImpl _value, $Res Function(_$getCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$getCategoriesImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getCategoriesImpl implements _getCategories {
  const _$getCategoriesImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'GetproductEvent.getCategories(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCategoriesImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCategoriesImplCopyWith<_$getCategoriesImpl> get copyWith =>
      __$$getCategoriesImplCopyWithImpl<_$getCategoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllProducts,
    required TResult Function(String userId, String category)
        getProductsbyCategory,
    required TResult Function(String query) getCategories,
  }) {
    return getCategories(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllProducts,
    TResult? Function(String userId, String category)? getProductsbyCategory,
    TResult? Function(String query)? getCategories,
  }) {
    return getCategories?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllProducts,
    TResult Function(String userId, String category)? getProductsbyCategory,
    TResult Function(String query)? getCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getAllProducts value) getAllProducts,
    required TResult Function(_getProductsbyCategory value)
        getProductsbyCategory,
    required TResult Function(_getCategories value) getCategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getAllProducts value)? getAllProducts,
    TResult? Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult? Function(_getCategories value)? getCategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getAllProducts value)? getAllProducts,
    TResult Function(_getProductsbyCategory value)? getProductsbyCategory,
    TResult Function(_getCategories value)? getCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _getCategories implements GetproductEvent {
  const factory _getCategories({required final String query}) =
      _$getCategoriesImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$getCategoriesImplCopyWith<_$getCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetproductState {
  StateResponse<Data?>? get allProducts => throw _privateConstructorUsedError;
  StateResponse<Data?>? get productByCategory =>
      throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  String? get userid => throw _privateConstructorUsedError;
  StateResponse<List<String>> get getCategory =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetproductStateCopyWith<GetproductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetproductStateCopyWith<$Res> {
  factory $GetproductStateCopyWith(
          GetproductState value, $Res Function(GetproductState) then) =
      _$GetproductStateCopyWithImpl<$Res, GetproductState>;
  @useResult
  $Res call(
      {StateResponse<Data?>? allProducts,
      StateResponse<Data?>? productByCategory,
      List<String>? categories,
      String? userid,
      StateResponse<List<String>> getCategory});
}

/// @nodoc
class _$GetproductStateCopyWithImpl<$Res, $Val extends GetproductState>
    implements $GetproductStateCopyWith<$Res> {
  _$GetproductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allProducts = freezed,
    Object? productByCategory = freezed,
    Object? categories = freezed,
    Object? userid = freezed,
    Object? getCategory = null,
  }) {
    return _then(_value.copyWith(
      allProducts: freezed == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as StateResponse<Data?>?,
      productByCategory: freezed == productByCategory
          ? _value.productByCategory
          : productByCategory // ignore: cast_nullable_to_non_nullable
              as StateResponse<Data?>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      getCategory: null == getCategory
          ? _value.getCategory
          : getCategory // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetproductStateImplCopyWith<$Res>
    implements $GetproductStateCopyWith<$Res> {
  factory _$$GetproductStateImplCopyWith(_$GetproductStateImpl value,
          $Res Function(_$GetproductStateImpl) then) =
      __$$GetproductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateResponse<Data?>? allProducts,
      StateResponse<Data?>? productByCategory,
      List<String>? categories,
      String? userid,
      StateResponse<List<String>> getCategory});
}

/// @nodoc
class __$$GetproductStateImplCopyWithImpl<$Res>
    extends _$GetproductStateCopyWithImpl<$Res, _$GetproductStateImpl>
    implements _$$GetproductStateImplCopyWith<$Res> {
  __$$GetproductStateImplCopyWithImpl(
      _$GetproductStateImpl _value, $Res Function(_$GetproductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allProducts = freezed,
    Object? productByCategory = freezed,
    Object? categories = freezed,
    Object? userid = freezed,
    Object? getCategory = null,
  }) {
    return _then(_$GetproductStateImpl(
      allProducts: freezed == allProducts
          ? _value.allProducts
          : allProducts // ignore: cast_nullable_to_non_nullable
              as StateResponse<Data?>?,
      productByCategory: freezed == productByCategory
          ? _value.productByCategory
          : productByCategory // ignore: cast_nullable_to_non_nullable
              as StateResponse<Data?>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userid: freezed == userid
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      getCategory: null == getCategory
          ? _value.getCategory
          : getCategory // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<String>>,
    ));
  }
}

/// @nodoc

class _$GetproductStateImpl implements _GetproductState {
  const _$GetproductStateImpl(
      {required this.allProducts,
      required this.productByCategory,
      required final List<String>? categories,
      required this.userid,
      required this.getCategory})
      : _categories = categories;

  @override
  final StateResponse<Data?>? allProducts;
  @override
  final StateResponse<Data?>? productByCategory;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? userid;
  @override
  final StateResponse<List<String>> getCategory;

  @override
  String toString() {
    return 'GetproductState(allProducts: $allProducts, productByCategory: $productByCategory, categories: $categories, userid: $userid, getCategory: $getCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetproductStateImpl &&
            (identical(other.allProducts, allProducts) ||
                other.allProducts == allProducts) &&
            (identical(other.productByCategory, productByCategory) ||
                other.productByCategory == productByCategory) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.userid, userid) || other.userid == userid) &&
            (identical(other.getCategory, getCategory) ||
                other.getCategory == getCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allProducts, productByCategory,
      const DeepCollectionEquality().hash(_categories), userid, getCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetproductStateImplCopyWith<_$GetproductStateImpl> get copyWith =>
      __$$GetproductStateImplCopyWithImpl<_$GetproductStateImpl>(
          this, _$identity);
}

abstract class _GetproductState implements GetproductState {
  const factory _GetproductState(
          {required final StateResponse<Data?>? allProducts,
          required final StateResponse<Data?>? productByCategory,
          required final List<String>? categories,
          required final String? userid,
          required final StateResponse<List<String>> getCategory}) =
      _$GetproductStateImpl;

  @override
  StateResponse<Data?>? get allProducts;
  @override
  StateResponse<Data?>? get productByCategory;
  @override
  List<String>? get categories;
  @override
  String? get userid;
  @override
  StateResponse<List<String>> get getCategory;
  @override
  @JsonKey(ignore: true)
  _$$GetproductStateImplCopyWith<_$GetproductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
