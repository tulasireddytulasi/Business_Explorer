import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';


@freezed
class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    required String? id,
    required String? alias,
    required String? name,
    required String? image_url,
    required bool? is_closed,
    required String? url,
    required int? review_count,
    required List<Category>? categories,
    required double? rating,
    required Coordinates? coordinates,
    required List<dynamic> transactions,
    required String? price,
    required Location? location,
    required String? phone,
    required String? display_phone,
    required double? distance,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String? alias,
    required String? title,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double? latitude,
    required double? longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required String? address1,
    required String? address2,
    required String? address3,
    required String? city,
    required String? zip_code,
    required String? country,
    required String? state,
    required List<String>? display_address,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Region with _$Region {
  const factory Region({
    required Coordinates? center,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

@freezed
class YelpResponse with _$YelpResponse {
  const factory YelpResponse({
    required List<RestaurantModel>? businesses,
    required int? total,
    required Region? region,
  }) = _YelpResponse;

  factory YelpResponse.fromJson(Map<String, dynamic> json) =>
      _$YelpResponseFromJson(json);
}