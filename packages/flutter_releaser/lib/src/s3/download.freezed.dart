// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DownloadS3FileResponse implements DiagnosticableTreeMixin {

 NetworkFile get file; String get url; Headers get headers;
/// Create a copy of DownloadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadS3FileResponseCopyWith<DownloadS3FileResponse> get copyWith => _$DownloadS3FileResponseCopyWithImpl<DownloadS3FileResponse>(this as DownloadS3FileResponse, _$identity);

  /// Serializes this DownloadS3FileResponse to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DownloadS3FileResponse'))
    ..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('headers', headers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadS3FileResponse&&(identical(other.file, file) || other.file == file)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other.headers, headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,url,const DeepCollectionEquality().hash(headers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DownloadS3FileResponse(file: $file, url: $url, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $DownloadS3FileResponseCopyWith<$Res>  {
  factory $DownloadS3FileResponseCopyWith(DownloadS3FileResponse value, $Res Function(DownloadS3FileResponse) _then) = _$DownloadS3FileResponseCopyWithImpl;
@useResult
$Res call({
 NetworkFile file, String url, Headers headers
});


$NetworkFileCopyWith<$Res> get file;

}
/// @nodoc
class _$DownloadS3FileResponseCopyWithImpl<$Res>
    implements $DownloadS3FileResponseCopyWith<$Res> {
  _$DownloadS3FileResponseCopyWithImpl(this._self, this._then);

  final DownloadS3FileResponse _self;
  final $Res Function(DownloadS3FileResponse) _then;

/// Create a copy of DownloadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = null,Object? url = null,Object? headers = null,}) {
  return _then(_self.copyWith(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as NetworkFile,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,headers: null == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Headers,
  ));
}
/// Create a copy of DownloadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkFileCopyWith<$Res> get file {
  
  return $NetworkFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// Adds pattern-matching-related methods to [DownloadS3FileResponse].
extension DownloadS3FileResponsePatterns on DownloadS3FileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadS3FileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadS3FileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadS3FileResponse value)  $default,){
final _that = this;
switch (_that) {
case _DownloadS3FileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadS3FileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadS3FileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NetworkFile file,  String url,  Headers headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DownloadS3FileResponse() when $default != null:
return $default(_that.file,_that.url,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NetworkFile file,  String url,  Headers headers)  $default,) {final _that = this;
switch (_that) {
case _DownloadS3FileResponse():
return $default(_that.file,_that.url,_that.headers);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NetworkFile file,  String url,  Headers headers)?  $default,) {final _that = this;
switch (_that) {
case _DownloadS3FileResponse() when $default != null:
return $default(_that.file,_that.url,_that.headers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DownloadS3FileResponse with DiagnosticableTreeMixin implements DownloadS3FileResponse {
  const _DownloadS3FileResponse({required this.file, required this.url, required final  Headers headers}): _headers = headers;
  factory _DownloadS3FileResponse.fromJson(Map<String, dynamic> json) => _$DownloadS3FileResponseFromJson(json);

@override final  NetworkFile file;
@override final  String url;
 final  Headers _headers;
@override Headers get headers {
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_headers);
}


/// Create a copy of DownloadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadS3FileResponseCopyWith<_DownloadS3FileResponse> get copyWith => __$DownloadS3FileResponseCopyWithImpl<_DownloadS3FileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DownloadS3FileResponseToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'DownloadS3FileResponse'))
    ..add(DiagnosticsProperty('file', file))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('headers', headers));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadS3FileResponse&&(identical(other.file, file) || other.file == file)&&(identical(other.url, url) || other.url == url)&&const DeepCollectionEquality().equals(other._headers, _headers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,file,url,const DeepCollectionEquality().hash(_headers));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'DownloadS3FileResponse(file: $file, url: $url, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$DownloadS3FileResponseCopyWith<$Res> implements $DownloadS3FileResponseCopyWith<$Res> {
  factory _$DownloadS3FileResponseCopyWith(_DownloadS3FileResponse value, $Res Function(_DownloadS3FileResponse) _then) = __$DownloadS3FileResponseCopyWithImpl;
@override @useResult
$Res call({
 NetworkFile file, String url, Headers headers
});


@override $NetworkFileCopyWith<$Res> get file;

}
/// @nodoc
class __$DownloadS3FileResponseCopyWithImpl<$Res>
    implements _$DownloadS3FileResponseCopyWith<$Res> {
  __$DownloadS3FileResponseCopyWithImpl(this._self, this._then);

  final _DownloadS3FileResponse _self;
  final $Res Function(_DownloadS3FileResponse) _then;

/// Create a copy of DownloadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = null,Object? url = null,Object? headers = null,}) {
  return _then(_DownloadS3FileResponse(
file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as NetworkFile,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,headers: null == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Headers,
  ));
}

/// Create a copy of DownloadS3FileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkFileCopyWith<$Res> get file {
  
  return $NetworkFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}

// dart format on
