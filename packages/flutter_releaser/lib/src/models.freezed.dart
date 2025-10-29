// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplicationArchive {

 String get name; String get description; List<Version> get versions;
/// Create a copy of ApplicationArchive
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationArchiveCopyWith<ApplicationArchive> get copyWith => _$ApplicationArchiveCopyWithImpl<ApplicationArchive>(this as ApplicationArchive, _$identity);

  /// Serializes this ApplicationArchive to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationArchive&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.versions, versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(versions));

@override
String toString() {
  return 'ApplicationArchive(name: $name, description: $description, versions: $versions)';
}


}

/// @nodoc
abstract mixin class $ApplicationArchiveCopyWith<$Res>  {
  factory $ApplicationArchiveCopyWith(ApplicationArchive value, $Res Function(ApplicationArchive) _then) = _$ApplicationArchiveCopyWithImpl;
@useResult
$Res call({
 String name, String description, List<Version> versions
});




}
/// @nodoc
class _$ApplicationArchiveCopyWithImpl<$Res>
    implements $ApplicationArchiveCopyWith<$Res> {
  _$ApplicationArchiveCopyWithImpl(this._self, this._then);

  final ApplicationArchive _self;
  final $Res Function(ApplicationArchive) _then;

/// Create a copy of ApplicationArchive
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? versions = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,versions: null == versions ? _self.versions : versions // ignore: cast_nullable_to_non_nullable
as List<Version>,
  ));
}

}


/// Adds pattern-matching-related methods to [ApplicationArchive].
extension ApplicationArchivePatterns on ApplicationArchive {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ApplicationArchive value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ApplicationArchive() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ApplicationArchive value)  $default,){
final _that = this;
switch (_that) {
case _ApplicationArchive():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ApplicationArchive value)?  $default,){
final _that = this;
switch (_that) {
case _ApplicationArchive() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  List<Version> versions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationArchive() when $default != null:
return $default(_that.name,_that.description,_that.versions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  List<Version> versions)  $default,) {final _that = this;
switch (_that) {
case _ApplicationArchive():
return $default(_that.name,_that.description,_that.versions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  List<Version> versions)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationArchive() when $default != null:
return $default(_that.name,_that.description,_that.versions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicationArchive implements ApplicationArchive {
  const _ApplicationArchive({required this.name, required this.description, required final  List<Version> versions}): _versions = versions;
  factory _ApplicationArchive.fromJson(Map<String, dynamic> json) => _$ApplicationArchiveFromJson(json);

@override final  String name;
@override final  String description;
 final  List<Version> _versions;
@override List<Version> get versions {
  if (_versions is EqualUnmodifiableListView) return _versions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_versions);
}


/// Create a copy of ApplicationArchive
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ApplicationArchiveCopyWith<_ApplicationArchive> get copyWith => __$ApplicationArchiveCopyWithImpl<_ApplicationArchive>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ApplicationArchiveToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationArchive&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._versions, _versions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(_versions));

@override
String toString() {
  return 'ApplicationArchive(name: $name, description: $description, versions: $versions)';
}


}

/// @nodoc
abstract mixin class _$ApplicationArchiveCopyWith<$Res> implements $ApplicationArchiveCopyWith<$Res> {
  factory _$ApplicationArchiveCopyWith(_ApplicationArchive value, $Res Function(_ApplicationArchive) _then) = __$ApplicationArchiveCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, List<Version> versions
});




}
/// @nodoc
class __$ApplicationArchiveCopyWithImpl<$Res>
    implements _$ApplicationArchiveCopyWith<$Res> {
  __$ApplicationArchiveCopyWithImpl(this._self, this._then);

  final _ApplicationArchive _self;
  final $Res Function(_ApplicationArchive) _then;

/// Create a copy of ApplicationArchive
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? versions = null,}) {
  return _then(_ApplicationArchive(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,versions: null == versions ? _self._versions : versions // ignore: cast_nullable_to_non_nullable
as List<Version>,
  ));
}


}


/// @nodoc
mixin _$Version {

 int get id; NetworkFile get file; String get version; Platform get platform; int get sizeInBytes; bool get mandatory; DateTime? get timestamp; List<Change>? get changes;
/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionCopyWith<Version> get copyWith => _$VersionCopyWithImpl<Version>(this as Version, _$identity);

  /// Serializes this Version to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Version&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.version, version) || other.version == version)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.changes, changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file,version,platform,sizeInBytes,mandatory,timestamp,const DeepCollectionEquality().hash(changes));

@override
String toString() {
  return 'Version(id: $id, file: $file, version: $version, platform: $platform, sizeInBytes: $sizeInBytes, mandatory: $mandatory, timestamp: $timestamp, changes: $changes)';
}


}

/// @nodoc
abstract mixin class $VersionCopyWith<$Res>  {
  factory $VersionCopyWith(Version value, $Res Function(Version) _then) = _$VersionCopyWithImpl;
@useResult
$Res call({
 int id, NetworkFile file, String version, Platform platform, int sizeInBytes, bool mandatory, DateTime? timestamp, List<Change>? changes
});


$NetworkFileCopyWith<$Res> get file;

}
/// @nodoc
class _$VersionCopyWithImpl<$Res>
    implements $VersionCopyWith<$Res> {
  _$VersionCopyWithImpl(this._self, this._then);

  final Version _self;
  final $Res Function(Version) _then;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? file = null,Object? version = null,Object? platform = null,Object? sizeInBytes = null,Object? mandatory = null,Object? timestamp = freezed,Object? changes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as NetworkFile,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,changes: freezed == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>?,
  ));
}
/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkFileCopyWith<$Res> get file {
  
  return $NetworkFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// Adds pattern-matching-related methods to [Version].
extension VersionPatterns on Version {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Version value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Version() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Version value)  $default,){
final _that = this;
switch (_that) {
case _Version():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Version value)?  $default,){
final _that = this;
switch (_that) {
case _Version() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  NetworkFile file,  String version,  Platform platform,  int sizeInBytes,  bool mandatory,  DateTime? timestamp,  List<Change>? changes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.id,_that.file,_that.version,_that.platform,_that.sizeInBytes,_that.mandatory,_that.timestamp,_that.changes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  NetworkFile file,  String version,  Platform platform,  int sizeInBytes,  bool mandatory,  DateTime? timestamp,  List<Change>? changes)  $default,) {final _that = this;
switch (_that) {
case _Version():
return $default(_that.id,_that.file,_that.version,_that.platform,_that.sizeInBytes,_that.mandatory,_that.timestamp,_that.changes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  NetworkFile file,  String version,  Platform platform,  int sizeInBytes,  bool mandatory,  DateTime? timestamp,  List<Change>? changes)?  $default,) {final _that = this;
switch (_that) {
case _Version() when $default != null:
return $default(_that.id,_that.file,_that.version,_that.platform,_that.sizeInBytes,_that.mandatory,_that.timestamp,_that.changes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Version extends Version {
  const _Version({required this.id, required this.file, required this.version, required this.platform, required this.sizeInBytes, required this.mandatory, this.timestamp, final  List<Change>? changes}): _changes = changes,super._();
  factory _Version.fromJson(Map<String, dynamic> json) => _$VersionFromJson(json);

@override final  int id;
@override final  NetworkFile file;
@override final  String version;
@override final  Platform platform;
@override final  int sizeInBytes;
@override final  bool mandatory;
@override final  DateTime? timestamp;
 final  List<Change>? _changes;
@override List<Change>? get changes {
  final value = _changes;
  if (value == null) return null;
  if (_changes is EqualUnmodifiableListView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionCopyWith<_Version> get copyWith => __$VersionCopyWithImpl<_Version>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VersionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Version&&(identical(other.id, id) || other.id == id)&&(identical(other.file, file) || other.file == file)&&(identical(other.version, version) || other.version == version)&&(identical(other.platform, platform) || other.platform == platform)&&(identical(other.sizeInBytes, sizeInBytes) || other.sizeInBytes == sizeInBytes)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._changes, _changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,file,version,platform,sizeInBytes,mandatory,timestamp,const DeepCollectionEquality().hash(_changes));

@override
String toString() {
  return 'Version(id: $id, file: $file, version: $version, platform: $platform, sizeInBytes: $sizeInBytes, mandatory: $mandatory, timestamp: $timestamp, changes: $changes)';
}


}

/// @nodoc
abstract mixin class _$VersionCopyWith<$Res> implements $VersionCopyWith<$Res> {
  factory _$VersionCopyWith(_Version value, $Res Function(_Version) _then) = __$VersionCopyWithImpl;
@override @useResult
$Res call({
 int id, NetworkFile file, String version, Platform platform, int sizeInBytes, bool mandatory, DateTime? timestamp, List<Change>? changes
});


@override $NetworkFileCopyWith<$Res> get file;

}
/// @nodoc
class __$VersionCopyWithImpl<$Res>
    implements _$VersionCopyWith<$Res> {
  __$VersionCopyWithImpl(this._self, this._then);

  final _Version _self;
  final $Res Function(_Version) _then;

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? file = null,Object? version = null,Object? platform = null,Object? sizeInBytes = null,Object? mandatory = null,Object? timestamp = freezed,Object? changes = freezed,}) {
  return _then(_Version(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as NetworkFile,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,sizeInBytes: null == sizeInBytes ? _self.sizeInBytes : sizeInBytes // ignore: cast_nullable_to_non_nullable
as int,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,changes: freezed == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>?,
  ));
}

/// Create a copy of Version
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkFileCopyWith<$Res> get file {
  
  return $NetworkFileCopyWith<$Res>(_self.file, (value) {
    return _then(_self.copyWith(file: value));
  });
}
}


/// @nodoc
mixin _$Change {

 ChangeType? get type; String get message;
/// Create a copy of Change
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeCopyWith<Change> get copyWith => _$ChangeCopyWithImpl<Change>(this as Change, _$identity);

  /// Serializes this Change to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Change&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message);

@override
String toString() {
  return 'Change(type: $type, message: $message)';
}


}

/// @nodoc
abstract mixin class $ChangeCopyWith<$Res>  {
  factory $ChangeCopyWith(Change value, $Res Function(Change) _then) = _$ChangeCopyWithImpl;
@useResult
$Res call({
 ChangeType? type, String message
});




}
/// @nodoc
class _$ChangeCopyWithImpl<$Res>
    implements $ChangeCopyWith<$Res> {
  _$ChangeCopyWithImpl(this._self, this._then);

  final Change _self;
  final $Res Function(Change) _then;

/// Create a copy of Change
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? message = null,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChangeType?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Change].
extension ChangePatterns on Change {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Change value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Change() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Change value)  $default,){
final _that = this;
switch (_that) {
case _Change():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Change value)?  $default,){
final _that = this;
switch (_that) {
case _Change() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChangeType? type,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Change() when $default != null:
return $default(_that.type,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChangeType? type,  String message)  $default,) {final _that = this;
switch (_that) {
case _Change():
return $default(_that.type,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChangeType? type,  String message)?  $default,) {final _that = this;
switch (_that) {
case _Change() when $default != null:
return $default(_that.type,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Change implements Change {
  const _Change({required this.type, required this.message});
  factory _Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);

@override final  ChangeType? type;
@override final  String message;

/// Create a copy of Change
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangeCopyWith<_Change> get copyWith => __$ChangeCopyWithImpl<_Change>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Change&&(identical(other.type, type) || other.type == type)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,message);

@override
String toString() {
  return 'Change(type: $type, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ChangeCopyWith<$Res> implements $ChangeCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) _then) = __$ChangeCopyWithImpl;
@override @useResult
$Res call({
 ChangeType? type, String message
});




}
/// @nodoc
class __$ChangeCopyWithImpl<$Res>
    implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(this._self, this._then);

  final _Change _self;
  final $Res Function(_Change) _then;

/// Create a copy of Change
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? message = null,}) {
  return _then(_Change(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChangeType?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$NetworkFile {

 int get id; String get name; int get size; String get sha256; DateTime get requestDate; DateTime? get uploadDate;
/// Create a copy of NetworkFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFileCopyWith<NetworkFile> get copyWith => _$NetworkFileCopyWithImpl<NetworkFile>(this as NetworkFile, _$identity);

  /// Serializes this NetworkFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.sha256, sha256) || other.sha256 == sha256)&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate)&&(identical(other.uploadDate, uploadDate) || other.uploadDate == uploadDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,size,sha256,requestDate,uploadDate);

@override
String toString() {
  return 'NetworkFile(id: $id, name: $name, size: $size, sha256: $sha256, requestDate: $requestDate, uploadDate: $uploadDate)';
}


}

/// @nodoc
abstract mixin class $NetworkFileCopyWith<$Res>  {
  factory $NetworkFileCopyWith(NetworkFile value, $Res Function(NetworkFile) _then) = _$NetworkFileCopyWithImpl;
@useResult
$Res call({
 int id, String name, int size, String sha256, DateTime requestDate, DateTime? uploadDate
});




}
/// @nodoc
class _$NetworkFileCopyWithImpl<$Res>
    implements $NetworkFileCopyWith<$Res> {
  _$NetworkFileCopyWithImpl(this._self, this._then);

  final NetworkFile _self;
  final $Res Function(NetworkFile) _then;

/// Create a copy of NetworkFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? size = null,Object? sha256 = null,Object? requestDate = null,Object? uploadDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,requestDate: null == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as DateTime,uploadDate: freezed == uploadDate ? _self.uploadDate : uploadDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkFile].
extension NetworkFilePatterns on NetworkFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NetworkFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NetworkFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NetworkFile value)  $default,){
final _that = this;
switch (_that) {
case _NetworkFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NetworkFile value)?  $default,){
final _that = this;
switch (_that) {
case _NetworkFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int size,  String sha256,  DateTime requestDate,  DateTime? uploadDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NetworkFile() when $default != null:
return $default(_that.id,_that.name,_that.size,_that.sha256,_that.requestDate,_that.uploadDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int size,  String sha256,  DateTime requestDate,  DateTime? uploadDate)  $default,) {final _that = this;
switch (_that) {
case _NetworkFile():
return $default(_that.id,_that.name,_that.size,_that.sha256,_that.requestDate,_that.uploadDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int size,  String sha256,  DateTime requestDate,  DateTime? uploadDate)?  $default,) {final _that = this;
switch (_that) {
case _NetworkFile() when $default != null:
return $default(_that.id,_that.name,_that.size,_that.sha256,_that.requestDate,_that.uploadDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NetworkFile implements NetworkFile {
  const _NetworkFile({required this.id, required this.name, required this.size, required this.sha256, required this.requestDate, this.uploadDate});
  factory _NetworkFile.fromJson(Map<String, dynamic> json) => _$NetworkFileFromJson(json);

@override final  int id;
@override final  String name;
@override final  int size;
@override final  String sha256;
@override final  DateTime requestDate;
@override final  DateTime? uploadDate;

/// Create a copy of NetworkFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NetworkFileCopyWith<_NetworkFile> get copyWith => __$NetworkFileCopyWithImpl<_NetworkFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NetworkFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkFile&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.sha256, sha256) || other.sha256 == sha256)&&(identical(other.requestDate, requestDate) || other.requestDate == requestDate)&&(identical(other.uploadDate, uploadDate) || other.uploadDate == uploadDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,size,sha256,requestDate,uploadDate);

@override
String toString() {
  return 'NetworkFile(id: $id, name: $name, size: $size, sha256: $sha256, requestDate: $requestDate, uploadDate: $uploadDate)';
}


}

/// @nodoc
abstract mixin class _$NetworkFileCopyWith<$Res> implements $NetworkFileCopyWith<$Res> {
  factory _$NetworkFileCopyWith(_NetworkFile value, $Res Function(_NetworkFile) _then) = __$NetworkFileCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int size, String sha256, DateTime requestDate, DateTime? uploadDate
});




}
/// @nodoc
class __$NetworkFileCopyWithImpl<$Res>
    implements _$NetworkFileCopyWith<$Res> {
  __$NetworkFileCopyWithImpl(this._self, this._then);

  final _NetworkFile _self;
  final $Res Function(_NetworkFile) _then;

/// Create a copy of NetworkFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? size = null,Object? sha256 = null,Object? requestDate = null,Object? uploadDate = freezed,}) {
  return _then(_NetworkFile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int,sha256: null == sha256 ? _self.sha256 : sha256 // ignore: cast_nullable_to_non_nullable
as String,requestDate: null == requestDate ? _self.requestDate : requestDate // ignore: cast_nullable_to_non_nullable
as DateTime,uploadDate: freezed == uploadDate ? _self.uploadDate : uploadDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
