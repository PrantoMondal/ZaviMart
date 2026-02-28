// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
  id: (json['id'] as num?)?.toInt(),
  email: json['email'] as String?,
  username: json['username'] as String?,
  password: json['password'] as String?,
  name: json['name'] == null
      ? null
      : Name.fromJson(json['name'] as Map<String, dynamic>),
  phone: json['phone'] as String?,
  V: (json['__v'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'address': instance.address,
  'id': instance.id,
  'email': instance.email,
  'username': instance.username,
  'password': instance.password,
  'name': instance.name,
  'phone': instance.phone,
  '__v': instance.V,
};

_Name _$NameFromJson(Map<String, dynamic> json) => _Name(
  firstname: json['firstname'] as String?,
  lastname: json['lastname'] as String?,
);

Map<String, dynamic> _$NameToJson(_Name instance) => <String, dynamic>{
  'firstname': instance.firstname,
  'lastname': instance.lastname,
};

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  geolocation: json['geolocation'] == null
      ? null
      : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
  city: json['city'] as String?,
  street: json['street'] as String?,
  number: (json['number'] as num?)?.toInt(),
  zipcode: json['zipcode'] as String?,
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'geolocation': instance.geolocation,
  'city': instance.city,
  'street': instance.street,
  'number': instance.number,
  'zipcode': instance.zipcode,
};

_Geolocation _$GeolocationFromJson(Map<String, dynamic> json) =>
    _Geolocation(lat: json['lat'] as String?, long: json['long'] as String?);

Map<String, dynamic> _$GeolocationToJson(_Geolocation instance) =>
    <String, dynamic>{'lat': instance.lat, 'long': instance.long};
