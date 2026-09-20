// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadVersionRequest {

 String get version; String get archivePath; TargetPlatform get platform; bool get mandatory; List<Change> get changes;
/// Create a copy of UploadVersionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadVersionRequestCopyWith<UploadVersionRequest> get copyWith => _$UploadVersionRequestCopyWithImpl<UploadVersionRequest>(this as UploadVersionRequest, _$identity);

  /// Serializes this UploadVersionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UploadVersionRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadVersionRequest&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.archivePath, _this.archivePath) || other.archivePath == _this.archivePath)&&(identical(other.platform, _this.platform) || other.platform == _this.platform)&&(identical(other.mandatory, _this.mandatory) || other.mandatory == _this.mandatory)&&const DeepCollectionEquality().equals(other.changes, _this.changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UploadVersionRequest;
  return Object.hash(runtimeType,_this.version,_this.archivePath,_this.platform,_this.mandatory,const DeepCollectionEquality().hash(_this.changes));
}

@override
String toString() {
  final _this = this as UploadVersionRequest;
  return 'UploadVersionRequest(version: ${_this.version}, archivePath: ${_this.archivePath}, platform: ${_this.platform}, mandatory: ${_this.mandatory}, changes: ${_this.changes})';
}


}

/// @nodoc
abstract mixin class $UploadVersionRequestCopyWith<$Res>  {
  factory $UploadVersionRequestCopyWith(UploadVersionRequest value, $Res Function(UploadVersionRequest) _then) = _$UploadVersionRequestCopyWithImpl;
@useResult
$Res call({
 String version, String archivePath, TargetPlatform platform, bool mandatory, List<Change> changes
});




}
/// @nodoc
class _$UploadVersionRequestCopyWithImpl<$Res>
    implements $UploadVersionRequestCopyWith<$Res> {
  _$UploadVersionRequestCopyWithImpl(this._self, this._then);

  final UploadVersionRequest _self;
  final $Res Function(UploadVersionRequest) _then;

/// Create a copy of UploadVersionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? archivePath = null,Object? platform = null,Object? mandatory = null,Object? changes = null,}) {
  return _then(UploadVersionRequest(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,archivePath: null == archivePath ? _self.archivePath : archivePath // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as TargetPlatform,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadVersionRequest].
extension UploadVersionRequestPatterns on UploadVersionRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadVersionRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadVersionRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadVersionRequest value)  $default,){
final _that = this;
switch (_that) {
case _UploadVersionRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadVersionRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UploadVersionRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  String archivePath,  TargetPlatform platform,  bool mandatory,  List<Change> changes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadVersionRequest() when $default != null:
return $default(_that.version,_that.archivePath,_that.platform,_that.mandatory,_that.changes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  String archivePath,  TargetPlatform platform,  bool mandatory,  List<Change> changes)  $default,) {final _that = this;
switch (_that) {
case _UploadVersionRequest():
return $default(_that.version,_that.archivePath,_that.platform,_that.mandatory,_that.changes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  String archivePath,  TargetPlatform platform,  bool mandatory,  List<Change> changes)?  $default,) {final _that = this;
switch (_that) {
case _UploadVersionRequest() when $default != null:
return $default(_that.version,_that.archivePath,_that.platform,_that.mandatory,_that.changes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadVersionRequest implements UploadVersionRequest {
  const _UploadVersionRequest({required this.version, required this.archivePath, required this.platform, required this.mandatory, required  List<Change> changes}): _changes = changes;
  factory _UploadVersionRequest.fromJson(Map<String, dynamic> json) => _$UploadVersionRequestFromJson(json);

@override final  String version;
@override final  String archivePath;
@override final  TargetPlatform platform;
@override final  bool mandatory;
 final  List<Change> _changes;
@override List<Change> get changes {
  if (_changes is EqualUnmodifiableListView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changes);
}


/// Create a copy of UploadVersionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadVersionRequestCopyWith<_UploadVersionRequest> get copyWith => __$UploadVersionRequestCopyWithImpl<_UploadVersionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadVersionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadVersionRequest&&(identical(other.version, version) || other.version == version)&&(identical(other.archivePath, archivePath) || other.archivePath == archivePath)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&const DeepCollectionEquality().equals(other.changes, _changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,version,archivePath,platform,mandatory,const DeepCollectionEquality().hash(_changes));
}

@override
String toString() {
    return 'UploadVersionRequest(version: $version, archivePath: $archivePath, platform: $platform, mandatory: $mandatory, changes: $changes)';
}


}

/// @nodoc
abstract mixin class _$UploadVersionRequestCopyWith<$Res> implements $UploadVersionRequestCopyWith<$Res> {
  factory _$UploadVersionRequestCopyWith(_UploadVersionRequest value, $Res Function(_UploadVersionRequest) _then) = __$UploadVersionRequestCopyWithImpl;
@override @useResult
$Res call({
 String version, String archivePath, TargetPlatform platform, bool mandatory, List<Change> changes
});




}
/// @nodoc
class __$UploadVersionRequestCopyWithImpl<$Res>
    implements _$UploadVersionRequestCopyWith<$Res> {
  __$UploadVersionRequestCopyWithImpl(this._self, this._then);

  final _UploadVersionRequest _self;
  final $Res Function(_UploadVersionRequest) _then;

/// Create a copy of UploadVersionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? archivePath = null,Object? platform = null,Object? mandatory = null,Object? changes = null,}) {
  return _then(_UploadVersionRequest(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,archivePath: null == archivePath ? _self.archivePath : archivePath // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as TargetPlatform,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>,
  ));
}


}


/// @nodoc
mixin _$UploadS3FileRequest {

 String get name; int get sizeInBytes; String get sha256; String get version; TargetPlatform get platform; bool get mandatory; List<Change> get changes;
/// Create a copy of UploadS3FileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadS3FileRequestCopyWith<UploadS3FileRequest> get copyWith => _$UploadS3FileRequestCopyWithImpl<UploadS3FileRequest>(this as UploadS3FileRequest, _$identity);

  /// Serializes this UploadS3FileRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UploadS3FileRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadS3FileRequest&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sizeInBytes, _this.sizeInBytes) || other.sizeInBytes == _this.sizeInBytes)&&(identical(other.sha256, _this.sha256) || other.sha256 == _this.sha256)&&(identical(other.version, _this.version) || other.version == _this.version)&&(identical(other.platform, _this.platform) || other.platform == _this.platform)&&(identical(other.mandatory, _this.mandatory) || other.mandatory == _this.mandatory)&&const DeepCollectionEquality().equals(other.changes, _this.changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UploadS3FileRequest;
  return Object.hash(runtimeType,_this.name,_this.sizeInBytes,_this.sha256,_this.version,_this.platform,_this.mandatory,const DeepCollectionEquality().hash(_this.changes));
}

@override
String toString() {
  final _this = this as UploadS3FileRequest;
  return 'UploadS3FileRequest(name: ${_this.name}, sizeInBytes: ${_this.sizeInBytes}, sha256: ${_this.sha256}, version: ${_this.version}, platform: ${_this.platform}, mandatory: ${_this.mandatory}, changes: ${_this.changes})';
}


}

/// @nodoc
abstract mixin class $UploadS3FileRequestCopyWith<$Res>  {
  factory $UploadS3FileRequestCopyWith(UploadS3FileRequest value, $Res Function(UploadS3FileRequest) _then) = _$UploadS3FileRequestCopyWithImpl;
@useResult
$Res call({
 String name, int sizeInBytes, String sha256, String version, TargetPlatform platform, bool mandatory, List<Change> changes
});




}
/// @nodoc
class _$UploadS3FileRequestCopyWithImpl<$Res>
    implements $UploadS3FileRequestCopyWith<$Res> {
  _$UploadS3FileRequestCopyWithImpl(this._self, this._then);

  final UploadS3FileRequest _self;
  final $Res Function(UploadS3FileRequest) _then;

/// Create a copy of UploadS3FileRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sizeInBytes = null,Object? sha256 = null,Object? version = null,Object? platform = null,Object? mandatory = null,Object? changes = null,}) {
  return _then(UploadS3FileRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as TargetPlatform,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadS3FileRequest].
extension UploadS3FileRequestPatterns on UploadS3FileRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadS3FileRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadS3FileRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadS3FileRequest value)  $default,){
final _that = this;
switch (_that) {
case _UploadS3FileRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadS3FileRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UploadS3FileRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int sizeInBytes,  String sha256,  String version,  TargetPlatform platform,  bool mandatory,  List<Change> changes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadS3FileRequest() when $default != null:
return $default(_that.name,_that.sizeInBytes,_that.sha256,_that.version,_that.platform,_that.mandatory,_that.changes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int sizeInBytes,  String sha256,  String version,  TargetPlatform platform,  bool mandatory,  List<Change> changes)  $default,) {final _that = this;
switch (_that) {
case _UploadS3FileRequest():
return $default(_that.name,_that.sizeInBytes,_that.sha256,_that.version,_that.platform,_that.mandatory,_that.changes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int sizeInBytes,  String sha256,  String version,  TargetPlatform platform,  bool mandatory,  List<Change> changes)?  $default,) {final _that = this;
switch (_that) {
case _UploadS3FileRequest() when $default != null:
return $default(_that.name,_that.sizeInBytes,_that.sha256,_that.version,_that.platform,_that.mandatory,_that.changes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadS3FileRequest implements UploadS3FileRequest {
  const _UploadS3FileRequest({required this.name, required this.sizeInBytes, required this.sha256, required this.version, required this.platform, required this.mandatory, required  List<Change> changes}): _changes = changes;
  factory _UploadS3FileRequest.fromJson(Map<String, dynamic> json) => _$UploadS3FileRequestFromJson(json);

@override final  String name;
@override final  int sizeInBytes;
@override final  String sha256;
@override final  String version;
@override final  TargetPlatform platform;
@override final  bool mandatory;
 final  List<Change> _changes;
@override List<Change> get changes {
  if (_changes is EqualUnmodifiableListView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_changes);
}


/// Create a copy of UploadS3FileRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadS3FileRequestCopyWith<_UploadS3FileRequest> get copyWith => __$UploadS3FileRequestCopyWithImpl<_UploadS3FileRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadS3FileRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadS3FileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.sha256, sha256) || other.sha256 == sha256)&&(identical(other.version, version) || other.version == version)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&const DeepCollectionEquality().equals(other.changes, _changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,sizeInBytes,sha256,version,platform,mandatory,const DeepCollectionEquality().hash(_changes));
}

@override
String toString() {
    return 'UploadS3FileRequest(name: $name, sizeInBytes: $sizeInBytes, sha256: $sha256, version: $version, platform: $platform, mandatory: $mandatory, changes: $changes)';
}


}

/// @nodoc
abstract mixin class _$UploadS3FileRequestCopyWith<$Res> implements $UploadS3FileRequestCopyWith<$Res> {
  factory _$UploadS3FileRequestCopyWith(_UploadS3FileRequest value, $Res Function(_UploadS3FileRequest) _then) = __$UploadS3FileRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, int sizeInBytes, String sha256, String version, TargetPlatform platform, bool mandatory, List<Change> changes
});




}
/// @nodoc
class __$UploadS3FileRequestCopyWithImpl<$Res>
    implements _$UploadS3FileRequestCopyWith<$Res> {
  __$UploadS3FileRequestCopyWithImpl(this._self, this._then);

  final _UploadS3FileRequest _self;
  final $Res Function(_UploadS3FileRequest) _then;

/// Create a copy of UploadS3FileRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sizeInBytes = null,Object? sha256 = null,Object? version = null,Object? platform = null,Object? mandatory = null,Object? changes = null,}) {
  return _then(_UploadS3FileRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as TargetPlatform,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>,
  ));
}


}


/// @nodoc
mixin _$UploadS3FileResponse {

 int get id; String get url; Headers get headers;
/// Create a copy of UploadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadS3FileResponseCopyWith<UploadS3FileResponse> get copyWith => _$UploadS3FileResponseCopyWithImpl<UploadS3FileResponse>(this as UploadS3FileResponse, _$identity);

  /// Serializes this UploadS3FileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UploadS3FileResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadS3FileResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.url, _this.url) || other.url == _this.url)&&const DeepCollectionEquality().equals(other.headers, _this.headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UploadS3FileResponse;
  return Object.hash(runtimeType,_this.id,_this.url,const DeepCollectionEquality().hash(_this.headers));
}

@override
String toString() {
  final _this = this as UploadS3FileResponse;
  return 'UploadS3FileResponse(id: ${_this.id}, url: ${_this.url}, headers: ${_this.headers})';
}


}

/// @nodoc
abstract mixin class $UploadS3FileResponseCopyWith<$Res>  {
  factory $UploadS3FileResponseCopyWith(UploadS3FileResponse value, $Res Function(UploadS3FileResponse) _then) = _$UploadS3FileResponseCopyWithImpl;
@useResult
$Res call({
 int id, String url, Headers headers
});




}
/// @nodoc
class _$UploadS3FileResponseCopyWithImpl<$Res>
    implements $UploadS3FileResponseCopyWith<$Res> {
  _$UploadS3FileResponseCopyWithImpl(this._self, this._then);

  final UploadS3FileResponse _self;
  final $Res Function(UploadS3FileResponse) _then;

/// Create a copy of UploadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? url = null,Object? headers = null,}) {
  return _then(UploadS3FileResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Headers,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadS3FileResponse].
extension UploadS3FileResponsePatterns on UploadS3FileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadS3FileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadS3FileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadS3FileResponse value)  $default,){
final _that = this;
switch (_that) {
case _UploadS3FileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadS3FileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UploadS3FileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String url,  Headers headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadS3FileResponse() when $default != null:
return $default(_that.id,_that.url,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String url,  Headers headers)  $default,) {final _that = this;
switch (_that) {
case _UploadS3FileResponse():
return $default(_that.id,_that.url,_that.headers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String url,  Headers headers)?  $default,) {final _that = this;
switch (_that) {
case _UploadS3FileResponse() when $default != null:
return $default(_that.id,_that.url,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadS3FileResponse implements UploadS3FileResponse {
  const _UploadS3FileResponse({required this.id, required this.url, required  Headers headers}): _headers = headers;
  factory _UploadS3FileResponse.fromJson(Map<String, dynamic> json) => _$UploadS3FileResponseFromJson(json);

@override final  int id;
@override final  String url;
 final  Headers _headers;
@override Headers get headers {
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_headers);
}


/// Create a copy of UploadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadS3FileResponseCopyWith<_UploadS3FileResponse> get copyWith => __$UploadS3FileResponseCopyWithImpl<_UploadS3FileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadS3FileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadS3FileResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,url,const DeepCollectionEquality().hash(_headers));
}

@override
String toString() {
    return 'UploadS3FileResponse(id: $id, url: $url, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$UploadS3FileResponseCopyWith<$Res> implements $UploadS3FileResponseCopyWith<$Res> {
  factory _$UploadS3FileResponseCopyWith(_UploadS3FileResponse value, $Res Function(_UploadS3FileResponse) _then) = __$UploadS3FileResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String url, Headers headers
});




}
/// @nodoc
class __$UploadS3FileResponseCopyWithImpl<$Res>
    implements _$UploadS3FileResponseCopyWith<$Res> {
  __$UploadS3FileResponseCopyWithImpl(this._self, this._then);

  final _UploadS3FileResponse _self;
  final $Res Function(_UploadS3FileResponse) _then;

/// Create a copy of UploadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? url = null,Object? headers = null,}) {
  return _then(_UploadS3FileResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Headers,
  ));
}


}


/// @nodoc
mixin _$UploadS3InstallerRequest {

 String get name; int get sizeInBytes; String get sha256;
/// Create a copy of UploadS3InstallerRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadS3InstallerRequestCopyWith<UploadS3InstallerRequest> get copyWith => _$UploadS3InstallerRequestCopyWithImpl<UploadS3InstallerRequest>(this as UploadS3InstallerRequest, _$identity);

  /// Serializes this UploadS3InstallerRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UploadS3InstallerRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadS3InstallerRequest&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.sizeInBytes, _this.sizeInBytes) || other.sizeInBytes == _this.sizeInBytes)&&(identical(other.sha256, _this.sha256) || other.sha256 == _this.sha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UploadS3InstallerRequest;
  return Object.hash(runtimeType,_this.name,_this.sizeInBytes,_this.sha256);
}

@override
String toString() {
  final _this = this as UploadS3InstallerRequest;
  return 'UploadS3InstallerRequest(name: ${_this.name}, sizeInBytes: ${_this.sizeInBytes}, sha256: ${_this.sha256})';
}


}

/// @nodoc
abstract mixin class $UploadS3InstallerRequestCopyWith<$Res>  {
  factory $UploadS3InstallerRequestCopyWith(UploadS3InstallerRequest value, $Res Function(UploadS3InstallerRequest) _then) = _$UploadS3InstallerRequestCopyWithImpl;
@useResult
$Res call({
 String name, int sizeInBytes, String sha256
});




}
/// @nodoc
class _$UploadS3InstallerRequestCopyWithImpl<$Res>
    implements $UploadS3InstallerRequestCopyWith<$Res> {
  _$UploadS3InstallerRequestCopyWithImpl(this._self, this._then);

  final UploadS3InstallerRequest _self;
  final $Res Function(UploadS3InstallerRequest) _then;

/// Create a copy of UploadS3InstallerRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sizeInBytes = null,Object? sha256 = null,}) {
  return _then(UploadS3InstallerRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadS3InstallerRequest].
extension UploadS3InstallerRequestPatterns on UploadS3InstallerRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadS3InstallerRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadS3InstallerRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadS3InstallerRequest value)  $default,){
final _that = this;
switch (_that) {
case _UploadS3InstallerRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadS3InstallerRequest value)?  $default,){
final _that = this;
switch (_that) {
case _UploadS3InstallerRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int sizeInBytes,  String sha256)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadS3InstallerRequest() when $default != null:
return $default(_that.name,_that.sizeInBytes,_that.sha256);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int sizeInBytes,  String sha256)  $default,) {final _that = this;
switch (_that) {
case _UploadS3InstallerRequest():
return $default(_that.name,_that.sizeInBytes,_that.sha256);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int sizeInBytes,  String sha256)?  $default,) {final _that = this;
switch (_that) {
case _UploadS3InstallerRequest() when $default != null:
return $default(_that.name,_that.sizeInBytes,_that.sha256);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadS3InstallerRequest implements UploadS3InstallerRequest {
  const _UploadS3InstallerRequest({required this.name, required this.sizeInBytes, required this.sha256});
  factory _UploadS3InstallerRequest.fromJson(Map<String, dynamic> json) => _$UploadS3InstallerRequestFromJson(json);

@override final  String name;
@override final  int sizeInBytes;
@override final  String sha256;

/// Create a copy of UploadS3InstallerRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadS3InstallerRequestCopyWith<_UploadS3InstallerRequest> get copyWith => __$UploadS3InstallerRequestCopyWithImpl<_UploadS3InstallerRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadS3InstallerRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadS3InstallerRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.sha256, sha256) || other.sha256 == sha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,sizeInBytes,sha256);
}

@override
String toString() {
    return 'UploadS3InstallerRequest(name: $name, sizeInBytes: $sizeInBytes, sha256: $sha256)';
}


}

/// @nodoc
abstract mixin class _$UploadS3InstallerRequestCopyWith<$Res> implements $UploadS3InstallerRequestCopyWith<$Res> {
  factory _$UploadS3InstallerRequestCopyWith(_UploadS3InstallerRequest value, $Res Function(_UploadS3InstallerRequest) _then) = __$UploadS3InstallerRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, int sizeInBytes, String sha256
});




}
/// @nodoc
class __$UploadS3InstallerRequestCopyWithImpl<$Res>
    implements _$UploadS3InstallerRequestCopyWith<$Res> {
  __$UploadS3InstallerRequestCopyWithImpl(this._self, this._then);

  final _UploadS3InstallerRequest _self;
  final $Res Function(_UploadS3InstallerRequest) _then;

/// Create a copy of UploadS3InstallerRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sizeInBytes = null,Object? sha256 = null,}) {
  return _then(_UploadS3InstallerRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UploadS3InstallerResponse {

 String get url; Headers get headers;
/// Create a copy of UploadS3InstallerResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadS3InstallerResponseCopyWith<UploadS3InstallerResponse> get copyWith => _$UploadS3InstallerResponseCopyWithImpl<UploadS3InstallerResponse>(this as UploadS3InstallerResponse, _$identity);

  /// Serializes this UploadS3InstallerResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UploadS3InstallerResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadS3InstallerResponse&&(identical(other.url, _this.url) || other.url == _this.url)&&const DeepCollectionEquality().equals(other.headers, _this.headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UploadS3InstallerResponse;
  return Object.hash(runtimeType,_this.url,const DeepCollectionEquality().hash(_this.headers));
}

@override
String toString() {
  final _this = this as UploadS3InstallerResponse;
  return 'UploadS3InstallerResponse(url: ${_this.url}, headers: ${_this.headers})';
}


}

/// @nodoc
abstract mixin class $UploadS3InstallerResponseCopyWith<$Res>  {
  factory $UploadS3InstallerResponseCopyWith(UploadS3InstallerResponse value, $Res Function(UploadS3InstallerResponse) _then) = _$UploadS3InstallerResponseCopyWithImpl;
@useResult
$Res call({
 String url, Headers headers
});




}
/// @nodoc
class _$UploadS3InstallerResponseCopyWithImpl<$Res>
    implements $UploadS3InstallerResponseCopyWith<$Res> {
  _$UploadS3InstallerResponseCopyWithImpl(this._self, this._then);

  final UploadS3InstallerResponse _self;
  final $Res Function(UploadS3InstallerResponse) _then;

/// Create a copy of UploadS3InstallerResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? headers = null,}) {
  return _then(UploadS3InstallerResponse(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Headers,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadS3InstallerResponse].
extension UploadS3InstallerResponsePatterns on UploadS3InstallerResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadS3InstallerResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadS3InstallerResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadS3InstallerResponse value)  $default,){
final _that = this;
switch (_that) {
case _UploadS3InstallerResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadS3InstallerResponse value)?  $default,){
final _that = this;
switch (_that) {
case _UploadS3InstallerResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  Headers headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadS3InstallerResponse() when $default != null:
return $default(_that.url,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  Headers headers)  $default,) {final _that = this;
switch (_that) {
case _UploadS3InstallerResponse():
return $default(_that.url,_that.headers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  Headers headers)?  $default,) {final _that = this;
switch (_that) {
case _UploadS3InstallerResponse() when $default != null:
return $default(_that.url,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadS3InstallerResponse implements UploadS3InstallerResponse {
  const _UploadS3InstallerResponse({required this.url, required  Headers headers}): _headers = headers;
  factory _UploadS3InstallerResponse.fromJson(Map<String, dynamic> json) => _$UploadS3InstallerResponseFromJson(json);

@override final  String url;
 final  Headers _headers;
@override Headers get headers {
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_headers);
}


/// Create a copy of UploadS3InstallerResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadS3InstallerResponseCopyWith<_UploadS3InstallerResponse> get copyWith => __$UploadS3InstallerResponseCopyWithImpl<_UploadS3InstallerResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadS3InstallerResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadS3InstallerResponse&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,url,const DeepCollectionEquality().hash(_headers));
}

@override
String toString() {
    return 'UploadS3InstallerResponse(url: $url, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$UploadS3InstallerResponseCopyWith<$Res> implements $UploadS3InstallerResponseCopyWith<$Res> {
  factory _$UploadS3InstallerResponseCopyWith(_UploadS3InstallerResponse value, $Res Function(_UploadS3InstallerResponse) _then) = __$UploadS3InstallerResponseCopyWithImpl;
@override @useResult
$Res call({
 String url, Headers headers
});




}
/// @nodoc
class __$UploadS3InstallerResponseCopyWithImpl<$Res>
    implements _$UploadS3InstallerResponseCopyWith<$Res> {
  __$UploadS3InstallerResponseCopyWithImpl(this._self, this._then);

  final _UploadS3InstallerResponse _self;
  final $Res Function(_UploadS3InstallerResponse) _then;

/// Create a copy of UploadS3InstallerResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? headers = null,}) {
  return _then(_UploadS3InstallerResponse(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Headers,
  ));
}


}

// dart format on
