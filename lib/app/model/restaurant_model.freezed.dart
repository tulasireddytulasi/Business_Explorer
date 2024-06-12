// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return _RestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  String? get id => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  bool? get is_closed => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get review_count => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  Coordinates? get coordinates => throw _privateConstructorUsedError;
  List<dynamic>? get transactions => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get display_phone => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {String? id,
      String? alias,
      String? name,
      String? image_url,
      bool? is_closed,
      String? url,
      int? review_count,
      List<Category>? categories,
      double? rating,
      Coordinates? coordinates,
      List<dynamic>? transactions,
      String? price,
      Location? location,
      String? phone,
      String? display_phone,
      double? distance});

  $CoordinatesCopyWith<$Res>? get coordinates;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alias = freezed,
    Object? name = freezed,
    Object? image_url = freezed,
    Object? is_closed = freezed,
    Object? url = freezed,
    Object? review_count = freezed,
    Object? categories = freezed,
    Object? rating = freezed,
    Object? coordinates = freezed,
    Object? transactions = freezed,
    Object? price = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? display_phone = freezed,
    Object? distance = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      is_closed: freezed == is_closed
          ? _value.is_closed
          : is_closed // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      review_count: freezed == review_count
          ? _value.review_count
          : review_count // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      display_phone: freezed == display_phone
          ? _value.display_phone
          : display_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get coordinates {
    if (_value.coordinates == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.coordinates!, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantModelImplCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$RestaurantModelImplCopyWith(_$RestaurantModelImpl value,
          $Res Function(_$RestaurantModelImpl) then) =
      __$$RestaurantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? alias,
      String? name,
      String? image_url,
      bool? is_closed,
      String? url,
      int? review_count,
      List<Category>? categories,
      double? rating,
      Coordinates? coordinates,
      List<dynamic>? transactions,
      String? price,
      Location? location,
      String? phone,
      String? display_phone,
      double? distance});

  @override
  $CoordinatesCopyWith<$Res>? get coordinates;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$RestaurantModelImplCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$RestaurantModelImpl>
    implements _$$RestaurantModelImplCopyWith<$Res> {
  __$$RestaurantModelImplCopyWithImpl(
      _$RestaurantModelImpl _value, $Res Function(_$RestaurantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? alias = freezed,
    Object? name = freezed,
    Object? image_url = freezed,
    Object? is_closed = freezed,
    Object? url = freezed,
    Object? review_count = freezed,
    Object? categories = freezed,
    Object? rating = freezed,
    Object? coordinates = freezed,
    Object? transactions = freezed,
    Object? price = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? display_phone = freezed,
    Object? distance = freezed,
  }) {
    return _then(_$RestaurantModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      is_closed: freezed == is_closed
          ? _value.is_closed
          : is_closed // ignore: cast_nullable_to_non_nullable
              as bool?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      review_count: freezed == review_count
          ? _value.review_count
          : review_count // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      display_phone: freezed == display_phone
          ? _value.display_phone
          : display_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantModelImpl implements _RestaurantModel {
  const _$RestaurantModelImpl(
      {this.id,
      this.alias,
      this.name,
      this.image_url,
      this.is_closed,
      this.url,
      this.review_count,
      final List<Category>? categories,
      this.rating,
      this.coordinates,
      final List<dynamic>? transactions,
      this.price,
      this.location,
      this.phone,
      this.display_phone,
      this.distance})
      : _categories = categories,
        _transactions = transactions;

  factory _$RestaurantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? alias;
  @override
  final String? name;
  @override
  final String? image_url;
  @override
  final bool? is_closed;
  @override
  final String? url;
  @override
  final int? review_count;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? rating;
  @override
  final Coordinates? coordinates;
  final List<dynamic>? _transactions;
  @override
  List<dynamic>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? price;
  @override
  final Location? location;
  @override
  final String? phone;
  @override
  final String? display_phone;
  @override
  final double? distance;

  @override
  String toString() {
    return 'RestaurantModel(id: $id, alias: $alias, name: $name, image_url: $image_url, is_closed: $is_closed, url: $url, review_count: $review_count, categories: $categories, rating: $rating, coordinates: $coordinates, transactions: $transactions, price: $price, location: $location, phone: $phone, display_phone: $display_phone, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.is_closed, is_closed) ||
                other.is_closed == is_closed) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.review_count, review_count) ||
                other.review_count == review_count) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.display_phone, display_phone) ||
                other.display_phone == display_phone) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      alias,
      name,
      image_url,
      is_closed,
      url,
      review_count,
      const DeepCollectionEquality().hash(_categories),
      rating,
      coordinates,
      const DeepCollectionEquality().hash(_transactions),
      price,
      location,
      phone,
      display_phone,
      distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantModelImplCopyWith<_$RestaurantModelImpl> get copyWith =>
      __$$RestaurantModelImplCopyWithImpl<_$RestaurantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantModelImplToJson(
      this,
    );
  }
}

abstract class _RestaurantModel implements RestaurantModel {
  const factory _RestaurantModel(
      {final String? id,
      final String? alias,
      final String? name,
      final String? image_url,
      final bool? is_closed,
      final String? url,
      final int? review_count,
      final List<Category>? categories,
      final double? rating,
      final Coordinates? coordinates,
      final List<dynamic>? transactions,
      final String? price,
      final Location? location,
      final String? phone,
      final String? display_phone,
      final double? distance}) = _$RestaurantModelImpl;

  factory _RestaurantModel.fromJson(Map<String, dynamic> json) =
      _$RestaurantModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get alias;
  @override
  String? get name;
  @override
  String? get image_url;
  @override
  bool? get is_closed;
  @override
  String? get url;
  @override
  int? get review_count;
  @override
  List<Category>? get categories;
  @override
  double? get rating;
  @override
  Coordinates? get coordinates;
  @override
  List<dynamic>? get transactions;
  @override
  String? get price;
  @override
  Location? get location;
  @override
  String? get phone;
  @override
  String? get display_phone;
  @override
  double? get distance;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantModelImplCopyWith<_$RestaurantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String? get alias => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String? alias, String? title});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? alias, String? title});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alias = freezed,
    Object? title = freezed,
  }) {
    return _then(_$CategoryImpl(
      alias: freezed == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl({required this.alias, required this.title});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String? alias;
  @override
  final String? title;

  @override
  String toString() {
    return 'Category(alias: $alias, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, alias, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String? alias,
      required final String? title}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String? get alias;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) {
  return _Coordinates.fromJson(json);
}

/// @nodoc
mixin _$Coordinates {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordinatesCopyWith<Coordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatesCopyWith<$Res> {
  factory $CoordinatesCopyWith(
          Coordinates value, $Res Function(Coordinates) then) =
      _$CoordinatesCopyWithImpl<$Res, Coordinates>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$CoordinatesCopyWithImpl<$Res, $Val extends Coordinates>
    implements $CoordinatesCopyWith<$Res> {
  _$CoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoordinatesImplCopyWith<$Res>
    implements $CoordinatesCopyWith<$Res> {
  factory _$$CoordinatesImplCopyWith(
          _$CoordinatesImpl value, $Res Function(_$CoordinatesImpl) then) =
      __$$CoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$CoordinatesImplCopyWithImpl<$Res>
    extends _$CoordinatesCopyWithImpl<$Res, _$CoordinatesImpl>
    implements _$$CoordinatesImplCopyWith<$Res> {
  __$$CoordinatesImplCopyWithImpl(
      _$CoordinatesImpl _value, $Res Function(_$CoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CoordinatesImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoordinatesImpl implements _Coordinates {
  const _$CoordinatesImpl({required this.latitude, required this.longitude});

  factory _$CoordinatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatesImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'Coordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      __$$CoordinatesImplCopyWithImpl<_$CoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatesImplToJson(
      this,
    );
  }
}

abstract class _Coordinates implements Coordinates {
  const factory _Coordinates(
      {required final double? latitude,
      required final double? longitude}) = _$CoordinatesImpl;

  factory _Coordinates.fromJson(Map<String, dynamic> json) =
      _$CoordinatesImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CoordinatesImplCopyWith<_$CoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get address1 => throw _privateConstructorUsedError;
  String? get address2 => throw _privateConstructorUsedError;
  String? get address3 => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get zip_code => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  List<String>? get display_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? address3,
      String? city,
      String? zip_code,
      String? country,
      String? state,
      List<String>? display_address});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
    Object? city = freezed,
    Object? zip_code = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? display_address = freezed,
  }) {
    return _then(_value.copyWith(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip_code: freezed == zip_code
          ? _value.zip_code
          : zip_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      display_address: freezed == display_address
          ? _value.display_address
          : display_address // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address1,
      String? address2,
      String? address3,
      String? city,
      String? zip_code,
      String? country,
      String? state,
      List<String>? display_address});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address1 = freezed,
    Object? address2 = freezed,
    Object? address3 = freezed,
    Object? city = freezed,
    Object? zip_code = freezed,
    Object? country = freezed,
    Object? state = freezed,
    Object? display_address = freezed,
  }) {
    return _then(_$LocationImpl(
      address1: freezed == address1
          ? _value.address1
          : address1 // ignore: cast_nullable_to_non_nullable
              as String?,
      address2: freezed == address2
          ? _value.address2
          : address2 // ignore: cast_nullable_to_non_nullable
              as String?,
      address3: freezed == address3
          ? _value.address3
          : address3 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      zip_code: freezed == zip_code
          ? _value.zip_code
          : zip_code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      display_address: freezed == display_address
          ? _value._display_address
          : display_address // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.address1,
      required this.address2,
      required this.address3,
      required this.city,
      required this.zip_code,
      required this.country,
      required this.state,
      required final List<String>? display_address})
      : _display_address = display_address;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? address1;
  @override
  final String? address2;
  @override
  final String? address3;
  @override
  final String? city;
  @override
  final String? zip_code;
  @override
  final String? country;
  @override
  final String? state;
  final List<String>? _display_address;
  @override
  List<String>? get display_address {
    final value = _display_address;
    if (value == null) return null;
    if (_display_address is EqualUnmodifiableListView) return _display_address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Location(address1: $address1, address2: $address2, address3: $address3, city: $city, zip_code: $zip_code, country: $country, state: $state, display_address: $display_address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.address1, address1) ||
                other.address1 == address1) &&
            (identical(other.address2, address2) ||
                other.address2 == address2) &&
            (identical(other.address3, address3) ||
                other.address3 == address3) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.zip_code, zip_code) ||
                other.zip_code == zip_code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._display_address, _display_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      address1,
      address2,
      address3,
      city,
      zip_code,
      country,
      state,
      const DeepCollectionEquality().hash(_display_address));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String? address1,
      required final String? address2,
      required final String? address3,
      required final String? city,
      required final String? zip_code,
      required final String? country,
      required final String? state,
      required final List<String>? display_address}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get address1;
  @override
  String? get address2;
  @override
  String? get address3;
  @override
  String? get city;
  @override
  String? get zip_code;
  @override
  String? get country;
  @override
  String? get state;
  @override
  List<String>? get display_address;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  Coordinates? get center => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call({Coordinates? center});

  $CoordinatesCopyWith<$Res>? get center;
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = freezed,
  }) {
    return _then(_value.copyWith(
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinatesCopyWith<$Res>? get center {
    if (_value.center == null) {
      return null;
    }

    return $CoordinatesCopyWith<$Res>(_value.center!, (value) {
      return _then(_value.copyWith(center: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegionImplCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$RegionImplCopyWith(
          _$RegionImpl value, $Res Function(_$RegionImpl) then) =
      __$$RegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Coordinates? center});

  @override
  $CoordinatesCopyWith<$Res>? get center;
}

/// @nodoc
class __$$RegionImplCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$RegionImpl>
    implements _$$RegionImplCopyWith<$Res> {
  __$$RegionImplCopyWithImpl(
      _$RegionImpl _value, $Res Function(_$RegionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? center = freezed,
  }) {
    return _then(_$RegionImpl(
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Coordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegionImpl implements _Region {
  const _$RegionImpl({required this.center});

  factory _$RegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegionImplFromJson(json);

  @override
  final Coordinates? center;

  @override
  String toString() {
    return 'Region(center: $center)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegionImpl &&
            (identical(other.center, center) || other.center == center));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, center);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      __$$RegionImplCopyWithImpl<_$RegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegionImplToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region({required final Coordinates? center}) = _$RegionImpl;

  factory _Region.fromJson(Map<String, dynamic> json) = _$RegionImpl.fromJson;

  @override
  Coordinates? get center;
  @override
  @JsonKey(ignore: true)
  _$$RegionImplCopyWith<_$RegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

YelpResponse _$YelpResponseFromJson(Map<String, dynamic> json) {
  return _YelpResponse.fromJson(json);
}

/// @nodoc
mixin _$YelpResponse {
  List<RestaurantModel>? get businesses => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  Region? get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YelpResponseCopyWith<YelpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YelpResponseCopyWith<$Res> {
  factory $YelpResponseCopyWith(
          YelpResponse value, $Res Function(YelpResponse) then) =
      _$YelpResponseCopyWithImpl<$Res, YelpResponse>;
  @useResult
  $Res call({List<RestaurantModel>? businesses, int? total, Region? region});

  $RegionCopyWith<$Res>? get region;
}

/// @nodoc
class _$YelpResponseCopyWithImpl<$Res, $Val extends YelpResponse>
    implements $YelpResponseCopyWith<$Res> {
  _$YelpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businesses = freezed,
    Object? total = freezed,
    Object? region = freezed,
  }) {
    return _then(_value.copyWith(
      businesses: freezed == businesses
          ? _value.businesses
          : businesses // ignore: cast_nullable_to_non_nullable
              as List<RestaurantModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $RegionCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$YelpResponseImplCopyWith<$Res>
    implements $YelpResponseCopyWith<$Res> {
  factory _$$YelpResponseImplCopyWith(
          _$YelpResponseImpl value, $Res Function(_$YelpResponseImpl) then) =
      __$$YelpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RestaurantModel>? businesses, int? total, Region? region});

  @override
  $RegionCopyWith<$Res>? get region;
}

/// @nodoc
class __$$YelpResponseImplCopyWithImpl<$Res>
    extends _$YelpResponseCopyWithImpl<$Res, _$YelpResponseImpl>
    implements _$$YelpResponseImplCopyWith<$Res> {
  __$$YelpResponseImplCopyWithImpl(
      _$YelpResponseImpl _value, $Res Function(_$YelpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? businesses = freezed,
    Object? total = freezed,
    Object? region = freezed,
  }) {
    return _then(_$YelpResponseImpl(
      businesses: freezed == businesses
          ? _value._businesses
          : businesses // ignore: cast_nullable_to_non_nullable
              as List<RestaurantModel>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$YelpResponseImpl implements _YelpResponse {
  const _$YelpResponseImpl(
      {required final List<RestaurantModel>? businesses,
      required this.total,
      required this.region})
      : _businesses = businesses;

  factory _$YelpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$YelpResponseImplFromJson(json);

  final List<RestaurantModel>? _businesses;
  @override
  List<RestaurantModel>? get businesses {
    final value = _businesses;
    if (value == null) return null;
    if (_businesses is EqualUnmodifiableListView) return _businesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;
  @override
  final Region? region;

  @override
  String toString() {
    return 'YelpResponse(businesses: $businesses, total: $total, region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$YelpResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._businesses, _businesses) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_businesses), total, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$YelpResponseImplCopyWith<_$YelpResponseImpl> get copyWith =>
      __$$YelpResponseImplCopyWithImpl<_$YelpResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$YelpResponseImplToJson(
      this,
    );
  }
}

abstract class _YelpResponse implements YelpResponse {
  const factory _YelpResponse(
      {required final List<RestaurantModel>? businesses,
      required final int? total,
      required final Region? region}) = _$YelpResponseImpl;

  factory _YelpResponse.fromJson(Map<String, dynamic> json) =
      _$YelpResponseImpl.fromJson;

  @override
  List<RestaurantModel>? get businesses;
  @override
  int? get total;
  @override
  Region? get region;
  @override
  @JsonKey(ignore: true)
  _$$YelpResponseImplCopyWith<_$YelpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
