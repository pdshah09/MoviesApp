// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DBConfiguration implements DiagnosticableTreeMixin {

 int get id; DBConfigurationImages get images; List<String> get changeKeys;
/// Create a copy of DBConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DBConfigurationCopyWith<DBConfiguration> get copyWith => _$DBConfigurationCopyWithImpl<DBConfiguration>(this as DBConfiguration, _$identity);

  /// Serializes this DBConfiguration to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DBConfiguration'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('images', images))..add(DiagnosticsProperty('changeKeys', changeKeys));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DBConfiguration&&(identical(other.id, id) || other.id == id)&&(identical(other.images, images) || other.images == images)&&const DeepCollectionEquality().equals(other.changeKeys, changeKeys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,images,const DeepCollectionEquality().hash(changeKeys));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DBConfiguration(id: $id, images: $images, changeKeys: $changeKeys)';
}


}

/// @nodoc
abstract mixin class $DBConfigurationCopyWith<$Res>  {
  factory $DBConfigurationCopyWith(DBConfiguration value, $Res Function(DBConfiguration) _then) = _$DBConfigurationCopyWithImpl;
@useResult
$Res call({
 int id, DBConfigurationImages images, List<String> changeKeys
});


$DBConfigurationImagesCopyWith<$Res> get images;

}
/// @nodoc
class _$DBConfigurationCopyWithImpl<$Res>
    implements $DBConfigurationCopyWith<$Res> {
  _$DBConfigurationCopyWithImpl(this._self, this._then);

  final DBConfiguration _self;
  final $Res Function(DBConfiguration) _then;

/// Create a copy of DBConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? images = null,Object? changeKeys = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as DBConfigurationImages,changeKeys: null == changeKeys ? _self.changeKeys : changeKeys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}
/// Create a copy of DBConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DBConfigurationImagesCopyWith<$Res> get images {
  
  return $DBConfigurationImagesCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// Adds pattern-matching-related methods to [DBConfiguration].
extension DBConfigurationPatterns on DBConfiguration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DBConfiguration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DBConfiguration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DBConfiguration value)  $default,){
final _that = this;
switch (_that) {
case _DBConfiguration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DBConfiguration value)?  $default,){
final _that = this;
switch (_that) {
case _DBConfiguration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  DBConfigurationImages images,  List<String> changeKeys)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DBConfiguration() when $default != null:
return $default(_that.id,_that.images,_that.changeKeys);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  DBConfigurationImages images,  List<String> changeKeys)  $default,) {final _that = this;
switch (_that) {
case _DBConfiguration():
return $default(_that.id,_that.images,_that.changeKeys);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  DBConfigurationImages images,  List<String> changeKeys)?  $default,) {final _that = this;
switch (_that) {
case _DBConfiguration() when $default != null:
return $default(_that.id,_that.images,_that.changeKeys);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DBConfiguration extends DBConfiguration with DiagnosticableTreeMixin {
  const _DBConfiguration({required this.id, required this.images, required final  List<String> changeKeys}): _changeKeys = changeKeys,super._();
  factory _DBConfiguration.fromJson(Map<String, dynamic> json) => _$DBConfigurationFromJson(json);

@override final  int id;
@override final  DBConfigurationImages images;
 final  List<String> _changeKeys;
@override List<String> get changeKeys {
  if (_changeKeys is EqualUnmodifiableListView) return _changeKeys;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changeKeys);
}


/// Create a copy of DBConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DBConfigurationCopyWith<_DBConfiguration> get copyWith => __$DBConfigurationCopyWithImpl<_DBConfiguration>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DBConfigurationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DBConfiguration'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('images', images))..add(DiagnosticsProperty('changeKeys', changeKeys));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DBConfiguration&&(identical(other.id, id) || other.id == id)&&(identical(other.images, images) || other.images == images)&&const DeepCollectionEquality().equals(other._changeKeys, _changeKeys));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,images,const DeepCollectionEquality().hash(_changeKeys));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DBConfiguration(id: $id, images: $images, changeKeys: $changeKeys)';
}


}

/// @nodoc
abstract mixin class _$DBConfigurationCopyWith<$Res> implements $DBConfigurationCopyWith<$Res> {
  factory _$DBConfigurationCopyWith(_DBConfiguration value, $Res Function(_DBConfiguration) _then) = __$DBConfigurationCopyWithImpl;
@override @useResult
$Res call({
 int id, DBConfigurationImages images, List<String> changeKeys
});


@override $DBConfigurationImagesCopyWith<$Res> get images;

}
/// @nodoc
class __$DBConfigurationCopyWithImpl<$Res>
    implements _$DBConfigurationCopyWith<$Res> {
  __$DBConfigurationCopyWithImpl(this._self, this._then);

  final _DBConfiguration _self;
  final $Res Function(_DBConfiguration) _then;

/// Create a copy of DBConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? images = null,Object? changeKeys = null,}) {
  return _then(_DBConfiguration(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as DBConfigurationImages,changeKeys: null == changeKeys ? _self._changeKeys : changeKeys // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of DBConfiguration
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DBConfigurationImagesCopyWith<$Res> get images {
  
  return $DBConfigurationImagesCopyWith<$Res>(_self.images, (value) {
    return _then(_self.copyWith(images: value));
  });
}
}


/// @nodoc
mixin _$DBConfigurationImages implements DiagnosticableTreeMixin {

 String get baseUrl; String get secureBaseUrl; List<String> get backdropSizes; List<String> get logoSizes; List<String> get posterSizes; List<String> get profileSizes; List<String> get stillSizes;
/// Create a copy of DBConfigurationImages
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DBConfigurationImagesCopyWith<DBConfigurationImages> get copyWith => _$DBConfigurationImagesCopyWithImpl<DBConfigurationImages>(this as DBConfigurationImages, _$identity);

  /// Serializes this DBConfigurationImages to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DBConfigurationImages'))
    ..add(DiagnosticsProperty('baseUrl', baseUrl))..add(DiagnosticsProperty('secureBaseUrl', secureBaseUrl))..add(DiagnosticsProperty('backdropSizes', backdropSizes))..add(DiagnosticsProperty('logoSizes', logoSizes))..add(DiagnosticsProperty('posterSizes', posterSizes))..add(DiagnosticsProperty('profileSizes', profileSizes))..add(DiagnosticsProperty('stillSizes', stillSizes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DBConfigurationImages&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.secureBaseUrl, secureBaseUrl) || other.secureBaseUrl == secureBaseUrl)&&const DeepCollectionEquality().equals(other.backdropSizes, backdropSizes)&&const DeepCollectionEquality().equals(other.logoSizes, logoSizes)&&const DeepCollectionEquality().equals(other.posterSizes, posterSizes)&&const DeepCollectionEquality().equals(other.profileSizes, profileSizes)&&const DeepCollectionEquality().equals(other.stillSizes, stillSizes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,secureBaseUrl,const DeepCollectionEquality().hash(backdropSizes),const DeepCollectionEquality().hash(logoSizes),const DeepCollectionEquality().hash(posterSizes),const DeepCollectionEquality().hash(profileSizes),const DeepCollectionEquality().hash(stillSizes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DBConfigurationImages(baseUrl: $baseUrl, secureBaseUrl: $secureBaseUrl, backdropSizes: $backdropSizes, logoSizes: $logoSizes, posterSizes: $posterSizes, profileSizes: $profileSizes, stillSizes: $stillSizes)';
}


}

/// @nodoc
abstract mixin class $DBConfigurationImagesCopyWith<$Res>  {
  factory $DBConfigurationImagesCopyWith(DBConfigurationImages value, $Res Function(DBConfigurationImages) _then) = _$DBConfigurationImagesCopyWithImpl;
@useResult
$Res call({
 String baseUrl, String secureBaseUrl, List<String> backdropSizes, List<String> logoSizes, List<String> posterSizes, List<String> profileSizes, List<String> stillSizes
});




}
/// @nodoc
class _$DBConfigurationImagesCopyWithImpl<$Res>
    implements $DBConfigurationImagesCopyWith<$Res> {
  _$DBConfigurationImagesCopyWithImpl(this._self, this._then);

  final DBConfigurationImages _self;
  final $Res Function(DBConfigurationImages) _then;

/// Create a copy of DBConfigurationImages
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseUrl = null,Object? secureBaseUrl = null,Object? backdropSizes = null,Object? logoSizes = null,Object? posterSizes = null,Object? profileSizes = null,Object? stillSizes = null,}) {
  return _then(_self.copyWith(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,secureBaseUrl: null == secureBaseUrl ? _self.secureBaseUrl : secureBaseUrl // ignore: cast_nullable_to_non_nullable
as String,backdropSizes: null == backdropSizes ? _self.backdropSizes : backdropSizes // ignore: cast_nullable_to_non_nullable
as List<String>,logoSizes: null == logoSizes ? _self.logoSizes : logoSizes // ignore: cast_nullable_to_non_nullable
as List<String>,posterSizes: null == posterSizes ? _self.posterSizes : posterSizes // ignore: cast_nullable_to_non_nullable
as List<String>,profileSizes: null == profileSizes ? _self.profileSizes : profileSizes // ignore: cast_nullable_to_non_nullable
as List<String>,stillSizes: null == stillSizes ? _self.stillSizes : stillSizes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DBConfigurationImages].
extension DBConfigurationImagesPatterns on DBConfigurationImages {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DBConfigurationImages value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DBConfigurationImages() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DBConfigurationImages value)  $default,){
final _that = this;
switch (_that) {
case _DBConfigurationImages():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DBConfigurationImages value)?  $default,){
final _that = this;
switch (_that) {
case _DBConfigurationImages() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseUrl,  String secureBaseUrl,  List<String> backdropSizes,  List<String> logoSizes,  List<String> posterSizes,  List<String> profileSizes,  List<String> stillSizes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DBConfigurationImages() when $default != null:
return $default(_that.baseUrl,_that.secureBaseUrl,_that.backdropSizes,_that.logoSizes,_that.posterSizes,_that.profileSizes,_that.stillSizes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseUrl,  String secureBaseUrl,  List<String> backdropSizes,  List<String> logoSizes,  List<String> posterSizes,  List<String> profileSizes,  List<String> stillSizes)  $default,) {final _that = this;
switch (_that) {
case _DBConfigurationImages():
return $default(_that.baseUrl,_that.secureBaseUrl,_that.backdropSizes,_that.logoSizes,_that.posterSizes,_that.profileSizes,_that.stillSizes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseUrl,  String secureBaseUrl,  List<String> backdropSizes,  List<String> logoSizes,  List<String> posterSizes,  List<String> profileSizes,  List<String> stillSizes)?  $default,) {final _that = this;
switch (_that) {
case _DBConfigurationImages() when $default != null:
return $default(_that.baseUrl,_that.secureBaseUrl,_that.backdropSizes,_that.logoSizes,_that.posterSizes,_that.profileSizes,_that.stillSizes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DBConfigurationImages extends DBConfigurationImages with DiagnosticableTreeMixin {
  const _DBConfigurationImages({required this.baseUrl, required this.secureBaseUrl, required final  List<String> backdropSizes, required final  List<String> logoSizes, required final  List<String> posterSizes, required final  List<String> profileSizes, required final  List<String> stillSizes}): _backdropSizes = backdropSizes,_logoSizes = logoSizes,_posterSizes = posterSizes,_profileSizes = profileSizes,_stillSizes = stillSizes,super._();
  factory _DBConfigurationImages.fromJson(Map<String, dynamic> json) => _$DBConfigurationImagesFromJson(json);

@override final  String baseUrl;
@override final  String secureBaseUrl;
 final  List<String> _backdropSizes;
@override List<String> get backdropSizes {
  if (_backdropSizes is EqualUnmodifiableListView) return _backdropSizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_backdropSizes);
}

 final  List<String> _logoSizes;
@override List<String> get logoSizes {
  if (_logoSizes is EqualUnmodifiableListView) return _logoSizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_logoSizes);
}

 final  List<String> _posterSizes;
@override List<String> get posterSizes {
  if (_posterSizes is EqualUnmodifiableListView) return _posterSizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posterSizes);
}

 final  List<String> _profileSizes;
@override List<String> get profileSizes {
  if (_profileSizes is EqualUnmodifiableListView) return _profileSizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profileSizes);
}

 final  List<String> _stillSizes;
@override List<String> get stillSizes {
  if (_stillSizes is EqualUnmodifiableListView) return _stillSizes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stillSizes);
}


/// Create a copy of DBConfigurationImages
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DBConfigurationImagesCopyWith<_DBConfigurationImages> get copyWith => __$DBConfigurationImagesCopyWithImpl<_DBConfigurationImages>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DBConfigurationImagesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DBConfigurationImages'))
    ..add(DiagnosticsProperty('baseUrl', baseUrl))..add(DiagnosticsProperty('secureBaseUrl', secureBaseUrl))..add(DiagnosticsProperty('backdropSizes', backdropSizes))..add(DiagnosticsProperty('logoSizes', logoSizes))..add(DiagnosticsProperty('posterSizes', posterSizes))..add(DiagnosticsProperty('profileSizes', profileSizes))..add(DiagnosticsProperty('stillSizes', stillSizes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DBConfigurationImages&&(identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl)&&(identical(other.secureBaseUrl, secureBaseUrl) || other.secureBaseUrl == secureBaseUrl)&&const DeepCollectionEquality().equals(other._backdropSizes, _backdropSizes)&&const DeepCollectionEquality().equals(other._logoSizes, _logoSizes)&&const DeepCollectionEquality().equals(other._posterSizes, _posterSizes)&&const DeepCollectionEquality().equals(other._profileSizes, _profileSizes)&&const DeepCollectionEquality().equals(other._stillSizes, _stillSizes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseUrl,secureBaseUrl,const DeepCollectionEquality().hash(_backdropSizes),const DeepCollectionEquality().hash(_logoSizes),const DeepCollectionEquality().hash(_posterSizes),const DeepCollectionEquality().hash(_profileSizes),const DeepCollectionEquality().hash(_stillSizes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DBConfigurationImages(baseUrl: $baseUrl, secureBaseUrl: $secureBaseUrl, backdropSizes: $backdropSizes, logoSizes: $logoSizes, posterSizes: $posterSizes, profileSizes: $profileSizes, stillSizes: $stillSizes)';
}


}

/// @nodoc
abstract mixin class _$DBConfigurationImagesCopyWith<$Res> implements $DBConfigurationImagesCopyWith<$Res> {
  factory _$DBConfigurationImagesCopyWith(_DBConfigurationImages value, $Res Function(_DBConfigurationImages) _then) = __$DBConfigurationImagesCopyWithImpl;
@override @useResult
$Res call({
 String baseUrl, String secureBaseUrl, List<String> backdropSizes, List<String> logoSizes, List<String> posterSizes, List<String> profileSizes, List<String> stillSizes
});




}
/// @nodoc
class __$DBConfigurationImagesCopyWithImpl<$Res>
    implements _$DBConfigurationImagesCopyWith<$Res> {
  __$DBConfigurationImagesCopyWithImpl(this._self, this._then);

  final _DBConfigurationImages _self;
  final $Res Function(_DBConfigurationImages) _then;

/// Create a copy of DBConfigurationImages
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseUrl = null,Object? secureBaseUrl = null,Object? backdropSizes = null,Object? logoSizes = null,Object? posterSizes = null,Object? profileSizes = null,Object? stillSizes = null,}) {
  return _then(_DBConfigurationImages(
baseUrl: null == baseUrl ? _self.baseUrl : baseUrl // ignore: cast_nullable_to_non_nullable
as String,secureBaseUrl: null == secureBaseUrl ? _self.secureBaseUrl : secureBaseUrl // ignore: cast_nullable_to_non_nullable
as String,backdropSizes: null == backdropSizes ? _self._backdropSizes : backdropSizes // ignore: cast_nullable_to_non_nullable
as List<String>,logoSizes: null == logoSizes ? _self._logoSizes : logoSizes // ignore: cast_nullable_to_non_nullable
as List<String>,posterSizes: null == posterSizes ? _self._posterSizes : posterSizes // ignore: cast_nullable_to_non_nullable
as List<String>,profileSizes: null == profileSizes ? _self._profileSizes : profileSizes // ignore: cast_nullable_to_non_nullable
as List<String>,stillSizes: null == stillSizes ? _self._stillSizes : stillSizes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
