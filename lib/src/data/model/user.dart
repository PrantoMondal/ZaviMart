import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'address') Address? address,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'name') Name? name,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: '__v') int? V,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@freezed
abstract class Name with _$Name {
  const factory Name({
    @JsonKey(name: 'firstname') String? firstname,
    @JsonKey(name: 'lastname') String? lastname,
  }) = _Name;

  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    @JsonKey(name: 'geolocation') Geolocation? geolocation,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'street') String? street,
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'zipcode') String? zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) => _$AddressFromJson(json);
}

@freezed
abstract class Geolocation with _$Geolocation {
  const factory Geolocation({
    @JsonKey(name: 'lat') String? lat,
    @JsonKey(name: 'long') String? long,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, Object?> json) => _$GeolocationFromJson(json);
}
