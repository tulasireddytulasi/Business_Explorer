// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantModelImpl _$$RestaurantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantModelImpl(
      id: json['id'] as String?,
      alias: json['alias'] as String?,
      name: json['name'] as String?,
      image_url: json['image_url'] as String?,
      is_closed: json['is_closed'] as bool?,
      url: json['url'] as String?,
      review_count: (json['review_count'] as num?)?.toInt(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: (json['rating'] as num?)?.toDouble(),
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      transactions: json['transactions'] as List<dynamic>?,
      price: json['price'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      display_phone: json['display_phone'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$RestaurantModelImplToJson(
        _$RestaurantModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alias': instance.alias,
      'name': instance.name,
      'image_url': instance.image_url,
      'is_closed': instance.is_closed,
      'url': instance.url,
      'review_count': instance.review_count,
      'categories': instance.categories,
      'rating': instance.rating,
      'coordinates': instance.coordinates,
      'transactions': instance.transactions,
      'price': instance.price,
      'location': instance.location,
      'phone': instance.phone,
      'display_phone': instance.display_phone,
      'distance': instance.distance,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      alias: json['alias'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'title': instance.title,
    };

_$CoordinatesImpl _$$CoordinatesImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatesImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CoordinatesImplToJson(_$CoordinatesImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      address3: json['address3'] as String?,
      city: json['city'] as String?,
      zip_code: json['zip_code'] as String?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      display_address: (json['display_address'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'address1': instance.address1,
      'address2': instance.address2,
      'address3': instance.address3,
      'city': instance.city,
      'zip_code': instance.zip_code,
      'country': instance.country,
      'state': instance.state,
      'display_address': instance.display_address,
    };

_$RegionImpl _$$RegionImplFromJson(Map<String, dynamic> json) => _$RegionImpl(
      center: json['center'] == null
          ? null
          : Coordinates.fromJson(json['center'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegionImplToJson(_$RegionImpl instance) =>
    <String, dynamic>{
      'center': instance.center,
    };

_$YelpResponseImpl _$$YelpResponseImplFromJson(Map<String, dynamic> json) =>
    _$YelpResponseImpl(
      businesses: (json['businesses'] as List<dynamic>?)
          ?.map((e) => RestaurantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      region: json['region'] == null
          ? null
          : Region.fromJson(json['region'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$YelpResponseImplToJson(_$YelpResponseImpl instance) =>
    <String, dynamic>{
      'businesses': instance.businesses,
      'total': instance.total,
      'region': instance.region,
    };
