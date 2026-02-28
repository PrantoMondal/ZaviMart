// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

@JsonKey(name: 'address') Address? get address;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'password') String? get password;@JsonKey(name: 'name') Name? get name;@JsonKey(name: 'phone') String? get phone;@JsonKey(name: '__v') int? get V;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.address, address) || other.address == address)&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.V, V) || other.V == V));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,id,email,username,password,name,phone,V);

@override
String toString() {
  return 'User(address: $address, id: $id, email: $email, username: $username, password: $password, name: $name, phone: $phone, V: $V)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'address') Address? address,@JsonKey(name: 'id') int? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'username') String? username,@JsonKey(name: 'password') String? password,@JsonKey(name: 'name') Name? name,@JsonKey(name: 'phone') String? phone,@JsonKey(name: '__v') int? V
});


$AddressCopyWith<$Res>? get address;$NameCopyWith<$Res>? get name;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? id = freezed,Object? email = freezed,Object? username = freezed,Object? password = freezed,Object? name = freezed,Object? phone = freezed,Object? V = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,V: freezed == V ? _self.V : V // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $NameCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}
}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'address')  Address? address, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'password')  String? password, @JsonKey(name: 'name')  Name? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: '__v')  int? V)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.address,_that.id,_that.email,_that.username,_that.password,_that.name,_that.phone,_that.V);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'address')  Address? address, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'password')  String? password, @JsonKey(name: 'name')  Name? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: '__v')  int? V)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.address,_that.id,_that.email,_that.username,_that.password,_that.name,_that.phone,_that.V);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'address')  Address? address, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'password')  String? password, @JsonKey(name: 'name')  Name? name, @JsonKey(name: 'phone')  String? phone, @JsonKey(name: '__v')  int? V)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.address,_that.id,_that.email,_that.username,_that.password,_that.name,_that.phone,_that.V);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
  const _User({@JsonKey(name: 'address') this.address, @JsonKey(name: 'id') this.id, @JsonKey(name: 'email') this.email, @JsonKey(name: 'username') this.username, @JsonKey(name: 'password') this.password, @JsonKey(name: 'name') this.name, @JsonKey(name: 'phone') this.phone, @JsonKey(name: '__v') this.V});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@JsonKey(name: 'address') final  Address? address;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'password') final  String? password;
@override@JsonKey(name: 'name') final  Name? name;
@override@JsonKey(name: 'phone') final  String? phone;
@override@JsonKey(name: '__v') final  int? V;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.address, address) || other.address == address)&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.V, V) || other.V == V));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,id,email,username,password,name,phone,V);

@override
String toString() {
  return 'User(address: $address, id: $id, email: $email, username: $username, password: $password, name: $name, phone: $phone, V: $V)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'address') Address? address,@JsonKey(name: 'id') int? id,@JsonKey(name: 'email') String? email,@JsonKey(name: 'username') String? username,@JsonKey(name: 'password') String? password,@JsonKey(name: 'name') Name? name,@JsonKey(name: 'phone') String? phone,@JsonKey(name: '__v') int? V
});


@override $AddressCopyWith<$Res>? get address;@override $NameCopyWith<$Res>? get name;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? id = freezed,Object? email = freezed,Object? username = freezed,Object? password = freezed,Object? name = freezed,Object? phone = freezed,Object? V = freezed,}) {
  return _then(_User(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as Address?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as Name?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,V: freezed == V ? _self.V : V // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get address {
    if (_self.address == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.address!, (value) {
    return _then(_self.copyWith(address: value));
  });
}/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NameCopyWith<$Res>? get name {
    if (_self.name == null) {
    return null;
  }

  return $NameCopyWith<$Res>(_self.name!, (value) {
    return _then(_self.copyWith(name: value));
  });
}
}


/// @nodoc
mixin _$Name {

@JsonKey(name: 'firstname') String? get firstname;@JsonKey(name: 'lastname') String? get lastname;
/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NameCopyWith<Name> get copyWith => _$NameCopyWithImpl<Name>(this as Name, _$identity);

  /// Serializes this Name to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Name&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstname,lastname);

@override
String toString() {
  return 'Name(firstname: $firstname, lastname: $lastname)';
}


}

/// @nodoc
abstract mixin class $NameCopyWith<$Res>  {
  factory $NameCopyWith(Name value, $Res Function(Name) _then) = _$NameCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'firstname') String? firstname,@JsonKey(name: 'lastname') String? lastname
});




}
/// @nodoc
class _$NameCopyWithImpl<$Res>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._self, this._then);

  final Name _self;
  final $Res Function(Name) _then;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstname = freezed,Object? lastname = freezed,}) {
  return _then(_self.copyWith(
firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Name].
extension NamePatterns on Name {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Name value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Name() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Name value)  $default,){
final _that = this;
switch (_that) {
case _Name():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Name value)?  $default,){
final _that = this;
switch (_that) {
case _Name() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'firstname')  String? firstname, @JsonKey(name: 'lastname')  String? lastname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Name() when $default != null:
return $default(_that.firstname,_that.lastname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'firstname')  String? firstname, @JsonKey(name: 'lastname')  String? lastname)  $default,) {final _that = this;
switch (_that) {
case _Name():
return $default(_that.firstname,_that.lastname);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'firstname')  String? firstname, @JsonKey(name: 'lastname')  String? lastname)?  $default,) {final _that = this;
switch (_that) {
case _Name() when $default != null:
return $default(_that.firstname,_that.lastname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Name implements Name {
  const _Name({@JsonKey(name: 'firstname') this.firstname, @JsonKey(name: 'lastname') this.lastname});
  factory _Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

@override@JsonKey(name: 'firstname') final  String? firstname;
@override@JsonKey(name: 'lastname') final  String? lastname;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NameCopyWith<_Name> get copyWith => __$NameCopyWithImpl<_Name>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Name&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstname,lastname);

@override
String toString() {
  return 'Name(firstname: $firstname, lastname: $lastname)';
}


}

/// @nodoc
abstract mixin class _$NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$NameCopyWith(_Name value, $Res Function(_Name) _then) = __$NameCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'firstname') String? firstname,@JsonKey(name: 'lastname') String? lastname
});




}
/// @nodoc
class __$NameCopyWithImpl<$Res>
    implements _$NameCopyWith<$Res> {
  __$NameCopyWithImpl(this._self, this._then);

  final _Name _self;
  final $Res Function(_Name) _then;

/// Create a copy of Name
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstname = freezed,Object? lastname = freezed,}) {
  return _then(_Name(
firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Address {

@JsonKey(name: 'geolocation') Geolocation? get geolocation;@JsonKey(name: 'city') String? get city;@JsonKey(name: 'street') String? get street;@JsonKey(name: 'number') int? get number;@JsonKey(name: 'zipcode') String? get zipcode;
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressCopyWith<Address> get copyWith => _$AddressCopyWithImpl<Address>(this as Address, _$identity);

  /// Serializes this Address to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Address&&(identical(other.geolocation, geolocation) || other.geolocation == geolocation)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.number, number) || other.number == number)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,geolocation,city,street,number,zipcode);

@override
String toString() {
  return 'Address(geolocation: $geolocation, city: $city, street: $street, number: $number, zipcode: $zipcode)';
}


}

/// @nodoc
abstract mixin class $AddressCopyWith<$Res>  {
  factory $AddressCopyWith(Address value, $Res Function(Address) _then) = _$AddressCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'geolocation') Geolocation? geolocation,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'number') int? number,@JsonKey(name: 'zipcode') String? zipcode
});


$GeolocationCopyWith<$Res>? get geolocation;

}
/// @nodoc
class _$AddressCopyWithImpl<$Res>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._self, this._then);

  final Address _self;
  final $Res Function(Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? geolocation = freezed,Object? city = freezed,Object? street = freezed,Object? number = freezed,Object? zipcode = freezed,}) {
  return _then(_self.copyWith(
geolocation: freezed == geolocation ? _self.geolocation : geolocation // ignore: cast_nullable_to_non_nullable
as Geolocation?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeolocationCopyWith<$Res>? get geolocation {
    if (_self.geolocation == null) {
    return null;
  }

  return $GeolocationCopyWith<$Res>(_self.geolocation!, (value) {
    return _then(_self.copyWith(geolocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [Address].
extension AddressPatterns on Address {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Address value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Address value)  $default,){
final _that = this;
switch (_that) {
case _Address():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Address value)?  $default,){
final _that = this;
switch (_that) {
case _Address() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'geolocation')  Geolocation? geolocation, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'zipcode')  String? zipcode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.geolocation,_that.city,_that.street,_that.number,_that.zipcode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'geolocation')  Geolocation? geolocation, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'zipcode')  String? zipcode)  $default,) {final _that = this;
switch (_that) {
case _Address():
return $default(_that.geolocation,_that.city,_that.street,_that.number,_that.zipcode);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'geolocation')  Geolocation? geolocation, @JsonKey(name: 'city')  String? city, @JsonKey(name: 'street')  String? street, @JsonKey(name: 'number')  int? number, @JsonKey(name: 'zipcode')  String? zipcode)?  $default,) {final _that = this;
switch (_that) {
case _Address() when $default != null:
return $default(_that.geolocation,_that.city,_that.street,_that.number,_that.zipcode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Address implements Address {
  const _Address({@JsonKey(name: 'geolocation') this.geolocation, @JsonKey(name: 'city') this.city, @JsonKey(name: 'street') this.street, @JsonKey(name: 'number') this.number, @JsonKey(name: 'zipcode') this.zipcode});
  factory _Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

@override@JsonKey(name: 'geolocation') final  Geolocation? geolocation;
@override@JsonKey(name: 'city') final  String? city;
@override@JsonKey(name: 'street') final  String? street;
@override@JsonKey(name: 'number') final  int? number;
@override@JsonKey(name: 'zipcode') final  String? zipcode;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressCopyWith<_Address> get copyWith => __$AddressCopyWithImpl<_Address>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Address&&(identical(other.geolocation, geolocation) || other.geolocation == geolocation)&&(identical(other.city, city) || other.city == city)&&(identical(other.street, street) || other.street == street)&&(identical(other.number, number) || other.number == number)&&(identical(other.zipcode, zipcode) || other.zipcode == zipcode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,geolocation,city,street,number,zipcode);

@override
String toString() {
  return 'Address(geolocation: $geolocation, city: $city, street: $street, number: $number, zipcode: $zipcode)';
}


}

/// @nodoc
abstract mixin class _$AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$AddressCopyWith(_Address value, $Res Function(_Address) _then) = __$AddressCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'geolocation') Geolocation? geolocation,@JsonKey(name: 'city') String? city,@JsonKey(name: 'street') String? street,@JsonKey(name: 'number') int? number,@JsonKey(name: 'zipcode') String? zipcode
});


@override $GeolocationCopyWith<$Res>? get geolocation;

}
/// @nodoc
class __$AddressCopyWithImpl<$Res>
    implements _$AddressCopyWith<$Res> {
  __$AddressCopyWithImpl(this._self, this._then);

  final _Address _self;
  final $Res Function(_Address) _then;

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? geolocation = freezed,Object? city = freezed,Object? street = freezed,Object? number = freezed,Object? zipcode = freezed,}) {
  return _then(_Address(
geolocation: freezed == geolocation ? _self.geolocation : geolocation // ignore: cast_nullable_to_non_nullable
as Geolocation?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,zipcode: freezed == zipcode ? _self.zipcode : zipcode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Address
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeolocationCopyWith<$Res>? get geolocation {
    if (_self.geolocation == null) {
    return null;
  }

  return $GeolocationCopyWith<$Res>(_self.geolocation!, (value) {
    return _then(_self.copyWith(geolocation: value));
  });
}
}


/// @nodoc
mixin _$Geolocation {

@JsonKey(name: 'lat') String? get lat;@JsonKey(name: 'long') String? get long;
/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeolocationCopyWith<Geolocation> get copyWith => _$GeolocationCopyWithImpl<Geolocation>(this as Geolocation, _$identity);

  /// Serializes this Geolocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Geolocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,long);

@override
String toString() {
  return 'Geolocation(lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class $GeolocationCopyWith<$Res>  {
  factory $GeolocationCopyWith(Geolocation value, $Res Function(Geolocation) _then) = _$GeolocationCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'lat') String? lat,@JsonKey(name: 'long') String? long
});




}
/// @nodoc
class _$GeolocationCopyWithImpl<$Res>
    implements $GeolocationCopyWith<$Res> {
  _$GeolocationCopyWithImpl(this._self, this._then);

  final Geolocation _self;
  final $Res Function(Geolocation) _then;

/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = freezed,Object? long = freezed,}) {
  return _then(_self.copyWith(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Geolocation].
extension GeolocationPatterns on Geolocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Geolocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Geolocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Geolocation value)  $default,){
final _that = this;
switch (_that) {
case _Geolocation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Geolocation value)?  $default,){
final _that = this;
switch (_that) {
case _Geolocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'lat')  String? lat, @JsonKey(name: 'long')  String? long)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Geolocation() when $default != null:
return $default(_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'lat')  String? lat, @JsonKey(name: 'long')  String? long)  $default,) {final _that = this;
switch (_that) {
case _Geolocation():
return $default(_that.lat,_that.long);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'lat')  String? lat, @JsonKey(name: 'long')  String? long)?  $default,) {final _that = this;
switch (_that) {
case _Geolocation() when $default != null:
return $default(_that.lat,_that.long);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Geolocation implements Geolocation {
  const _Geolocation({@JsonKey(name: 'lat') this.lat, @JsonKey(name: 'long') this.long});
  factory _Geolocation.fromJson(Map<String, dynamic> json) => _$GeolocationFromJson(json);

@override@JsonKey(name: 'lat') final  String? lat;
@override@JsonKey(name: 'long') final  String? long;

/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeolocationCopyWith<_Geolocation> get copyWith => __$GeolocationCopyWithImpl<_Geolocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeolocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Geolocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,long);

@override
String toString() {
  return 'Geolocation(lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class _$GeolocationCopyWith<$Res> implements $GeolocationCopyWith<$Res> {
  factory _$GeolocationCopyWith(_Geolocation value, $Res Function(_Geolocation) _then) = __$GeolocationCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'lat') String? lat,@JsonKey(name: 'long') String? long
});




}
/// @nodoc
class __$GeolocationCopyWithImpl<$Res>
    implements _$GeolocationCopyWith<$Res> {
  __$GeolocationCopyWithImpl(this._self, this._then);

  final _Geolocation _self;
  final $Res Function(_Geolocation) _then;

/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = freezed,Object? long = freezed,}) {
  return _then(_Geolocation(
lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,long: freezed == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
