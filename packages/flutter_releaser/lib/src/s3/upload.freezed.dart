// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadVersionRequest implements DiagnosticableTreeMixin {

 String get version; String get archivePath; Platform get platform; bool get mandatory; List<Change> get changes;
/// Create a copy of UploadVersionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadVersionRequestCopyWith<UploadVersionRequest> get copyWith => _$UploadVersionRequestCopyWithImpl<UploadVersionRequest>(this as UploadVersionRequest, _$identity);

  /// Serializes this UploadVersionRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadVersionRequest'))
    ..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('archivePath', archivePath))..add(DiagnosticsProperty('platform', platform))..add(DiagnosticsProperty('mandatory', mandatory))..add(DiagnosticsProperty('changes', changes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadVersionRequest&&(identical(other.version, version) || other.version == version)&&(identical(other.archivePath, archivePath) || other.archivePath == archivePath)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&const DeepCollectionEquality().equals(other.changes, changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,archivePath,platform,mandatory,const DeepCollectionEquality().hash(changes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadVersionRequest(version: $version, archivePath: $archivePath, platform: $platform, mandatory: $mandatory, changes: $changes)';
}


}

/// @nodoc
abstract mixin class $UploadVersionRequestCopyWith<$Res>  {
  factory $UploadVersionRequestCopyWith(UploadVersionRequest value, $Res Function(UploadVersionRequest) _then) = _$UploadVersionRequestCopyWithImpl;
@useResult
$Res call({
 String version, String archivePath, Platform platform, bool mandatory, List<Change> changes
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
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,archivePath: null == archivePath ? _self.archivePath : archivePath // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  String archivePath,  Platform platform,  bool mandatory,  List<Change> changes)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  String archivePath,  Platform platform,  bool mandatory,  List<Change> changes)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  String archivePath,  Platform platform,  bool mandatory,  List<Change> changes)?  $default,) {final _that = this;
switch (_that) {
case _UploadVersionRequest() when $default != null:
return $default(_that.version,_that.archivePath,_that.platform,_that.mandatory,_that.changes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadVersionRequest with DiagnosticableTreeMixin implements UploadVersionRequest {
  const _UploadVersionRequest({required this.version, required this.archivePath, required this.platform, required this.mandatory, required final  List<Change> changes}): _changes = changes;
  factory _UploadVersionRequest.fromJson(Map<String, dynamic> json) => _$UploadVersionRequestFromJson(json);

@override final  String version;
@override final  String archivePath;
@override final  Platform platform;
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
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadVersionRequest'))
    ..add(DiagnosticsProperty('version', version))..add(DiagnosticsProperty('archivePath', archivePath))..add(DiagnosticsProperty('platform', platform))..add(DiagnosticsProperty('mandatory', mandatory))..add(DiagnosticsProperty('changes', changes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadVersionRequest&&(identical(other.version, version) || other.version == version)&&(identical(other.archivePath, archivePath) || other.archivePath == archivePath)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&const DeepCollectionEquality().equals(other._changes, _changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,archivePath,platform,mandatory,const DeepCollectionEquality().hash(_changes));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadVersionRequest(version: $version, archivePath: $archivePath, platform: $platform, mandatory: $mandatory, changes: $changes)';
}


}

/// @nodoc
abstract mixin class _$UploadVersionRequestCopyWith<$Res> implements $UploadVersionRequestCopyWith<$Res> {
  factory _$UploadVersionRequestCopyWith(_UploadVersionRequest value, $Res Function(_UploadVersionRequest) _then) = __$UploadVersionRequestCopyWithImpl;
@override @useResult
$Res call({
 String version, String archivePath, Platform platform, bool mandatory, List<Change> changes
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
as Platform,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,changes: null == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>,
  ));
}


}


/// @nodoc
mixin _$UploadS3FileRequest implements DiagnosticableTreeMixin {

 String get name; int get sizeInBytes; String get sha256;
/// Create a copy of UploadS3FileRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadS3FileRequestCopyWith<UploadS3FileRequest> get copyWith => _$UploadS3FileRequestCopyWithImpl<UploadS3FileRequest>(this as UploadS3FileRequest, _$identity);

  /// Serializes this UploadS3FileRequest to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadS3FileRequest'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('sizeInBytes', sizeInBytes))..add(DiagnosticsProperty('sha256', sha256));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadS3FileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.sha256, sha256) || other.sha256 == sha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sizeInBytes,sha256);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadS3FileRequest(name: $name, sizeInBytes: $sizeInBytes, sha256: $sha256)';
}


}

/// @nodoc
abstract mixin class $UploadS3FileRequestCopyWith<$Res>  {
  factory $UploadS3FileRequestCopyWith(UploadS3FileRequest value, $Res Function(UploadS3FileRequest) _then) = _$UploadS3FileRequestCopyWithImpl;
@useResult
$Res call({
 String name, int sizeInBytes, String sha256
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? sizeInBytes = null,Object? sha256 = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int sizeInBytes,  String sha256)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadS3FileRequest() when $default != null:
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
case _UploadS3FileRequest():
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
case _UploadS3FileRequest() when $default != null:
return $default(_that.name,_that.sizeInBytes,_that.sha256);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadS3FileRequest with DiagnosticableTreeMixin implements UploadS3FileRequest {
  const _UploadS3FileRequest({required this.name, required this.sizeInBytes, required this.sha256});
  factory _UploadS3FileRequest.fromJson(Map<String, dynamic> json) => _$UploadS3FileRequestFromJson(json);

@override final  String name;
@override final  int sizeInBytes;
@override final  String sha256;

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
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadS3FileRequest'))
    ..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('sizeInBytes', sizeInBytes))..add(DiagnosticsProperty('sha256', sha256));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadS3FileRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.sha256, sha256) || other.sha256 == sha256));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,sizeInBytes,sha256);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadS3FileRequest(name: $name, sizeInBytes: $sizeInBytes, sha256: $sha256)';
}


}

/// @nodoc
abstract mixin class _$UploadS3FileRequestCopyWith<$Res> implements $UploadS3FileRequestCopyWith<$Res> {
  factory _$UploadS3FileRequestCopyWith(_UploadS3FileRequest value, $Res Function(_UploadS3FileRequest) _then) = __$UploadS3FileRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, int sizeInBytes, String sha256
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? sizeInBytes = null,Object? sha256 = null,}) {
  return _then(_UploadS3FileRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UploadS3FileResponse implements DiagnosticableTreeMixin {

 int get id; String get url; Headers get headers;
/// Create a copy of UploadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadS3FileResponseCopyWith<UploadS3FileResponse> get copyWith => _$UploadS3FileResponseCopyWithImpl<UploadS3FileResponse>(this as UploadS3FileResponse, _$identity);

  /// Serializes this UploadS3FileResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadS3FileResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('headers', headers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadS3FileResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,const DeepCollectionEquality().hash(headers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UploadS3FileResponse(id: $id, url: $url, headers: $headers)';
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
  return _then(_self.copyWith(
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

class _UploadS3FileResponse with DiagnosticableTreeMixin implements UploadS3FileResponse {
  const _UploadS3FileResponse({required this.id, required this.url, required final  Headers headers}): _headers = headers;
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
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UploadS3FileResponse'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('headers', headers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadS3FileResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,url,const DeepCollectionEquality().hash(_headers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
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

// dart format on
