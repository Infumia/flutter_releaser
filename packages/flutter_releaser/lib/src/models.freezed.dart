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

 String get name; String get description; List<Item> get items;
/// Create a copy of ApplicationArchive
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApplicationArchiveCopyWith<ApplicationArchive> get copyWith => _$ApplicationArchiveCopyWithImpl<ApplicationArchive>(this as ApplicationArchive, _$identity);

  /// Serializes this ApplicationArchive to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApplicationArchive&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ApplicationArchive(name: $name, description: $description, items: $items)';
}


}

/// @nodoc
abstract mixin class $ApplicationArchiveCopyWith<$Res>  {
  factory $ApplicationArchiveCopyWith(ApplicationArchive value, $Res Function(ApplicationArchive) _then) = _$ApplicationArchiveCopyWithImpl;
@useResult
$Res call({
 String name, String description, List<Item> items
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? items = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  List<Item> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ApplicationArchive() when $default != null:
return $default(_that.name,_that.description,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  List<Item> items)  $default,) {final _that = this;
switch (_that) {
case _ApplicationArchive():
return $default(_that.name,_that.description,_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  List<Item> items)?  $default,) {final _that = this;
switch (_that) {
case _ApplicationArchive() when $default != null:
return $default(_that.name,_that.description,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ApplicationArchive implements ApplicationArchive {
  const _ApplicationArchive({required this.name, required this.description, required final  List<Item> items}): _items = items;
  factory _ApplicationArchive.fromJson(Map<String, dynamic> json) => _$ApplicationArchiveFromJson(json);

@override final  String name;
@override final  String description;
 final  List<Item> _items;
@override List<Item> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ApplicationArchive&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ApplicationArchive(name: $name, description: $description, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ApplicationArchiveCopyWith<$Res> implements $ApplicationArchiveCopyWith<$Res> {
  factory _$ApplicationArchiveCopyWith(_ApplicationArchive value, $Res Function(_ApplicationArchive) _then) = __$ApplicationArchiveCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, List<Item> items
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? items = null,}) {
  return _then(_ApplicationArchive(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Item>,
  ));
}


}


/// @nodoc
mixin _$Item {

 String get version; int get shortVersion; DateTime get date; bool get mandatory; Uri get url; Platform get platform; List<Change>? get changes;
/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemCopyWith<Item> get copyWith => _$ItemCopyWithImpl<Item>(this as Item, _$identity);

  /// Serializes this Item to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Item&&(identical(other.version, version) || other.version == version)&&(identical(other.shortVersion, shortVersion) || other.shortVersion == shortVersion)&&(identical(other.date, date) || other.date == date)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&(identical(other.url, url) || other.url == url)&&(identical(other.platform, platform) || other.platform == platform)&&const DeepCollectionEquality().equals(other.changes, changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,shortVersion,date,mandatory,url,platform,const DeepCollectionEquality().hash(changes));

@override
String toString() {
  return 'Item(version: $version, shortVersion: $shortVersion, date: $date, mandatory: $mandatory, url: $url, platform: $platform, changes: $changes)';
}


}

/// @nodoc
abstract mixin class $ItemCopyWith<$Res>  {
  factory $ItemCopyWith(Item value, $Res Function(Item) _then) = _$ItemCopyWithImpl;
@useResult
$Res call({
 String version, int shortVersion, DateTime date, bool mandatory, Uri url, Platform platform, List<Change>? changes
});




}
/// @nodoc
class _$ItemCopyWithImpl<$Res>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._self, this._then);

  final Item _self;
  final $Res Function(Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? shortVersion = null,Object? date = null,Object? mandatory = null,Object? url = null,Object? platform = null,Object? changes = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,shortVersion: null == shortVersion ? _self.shortVersion : shortVersion // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,changes: freezed == changes ? _self.changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Item].
extension ItemPatterns on Item {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Item value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Item value)  $default,){
final _that = this;
switch (_that) {
case _Item():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Item value)?  $default,){
final _that = this;
switch (_that) {
case _Item() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String version,  int shortVersion,  DateTime date,  bool mandatory,  Uri url,  Platform platform,  List<Change>? changes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Item() when $default != null:
return $default(_that.version,_that.shortVersion,_that.date,_that.mandatory,_that.url,_that.platform,_that.changes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String version,  int shortVersion,  DateTime date,  bool mandatory,  Uri url,  Platform platform,  List<Change>? changes)  $default,) {final _that = this;
switch (_that) {
case _Item():
return $default(_that.version,_that.shortVersion,_that.date,_that.mandatory,_that.url,_that.platform,_that.changes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String version,  int shortVersion,  DateTime date,  bool mandatory,  Uri url,  Platform platform,  List<Change>? changes)?  $default,) {final _that = this;
switch (_that) {
case _Item() when $default != null:
return $default(_that.version,_that.shortVersion,_that.date,_that.mandatory,_that.url,_that.platform,_that.changes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Item implements Item {
  const _Item({required this.version, required this.shortVersion, required this.date, required this.mandatory, required this.url, required this.platform, required final  List<Change>? changes}): _changes = changes;
  factory _Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

@override final  String version;
@override final  int shortVersion;
@override final  DateTime date;
@override final  bool mandatory;
@override final  Uri url;
@override final  Platform platform;
 final  List<Change>? _changes;
@override List<Change>? get changes {
  final value = _changes;
  if (value == null) return null;
  if (_changes is EqualUnmodifiableListView) return _changes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemCopyWith<_Item> get copyWith => __$ItemCopyWithImpl<_Item>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Item&&(identical(other.version, version) || other.version == version)&&(identical(other.shortVersion, shortVersion) || other.shortVersion == shortVersion)&&(identical(other.date, date) || other.date == date)&&(identical(other.mandatory, mandatory) || other.mandatory == mandatory)&&(identical(other.url, url) || other.url == url)&&(identical(other.platform, platform) || other.platform == platform)&&const DeepCollectionEquality().equals(other._changes, _changes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,version,shortVersion,date,mandatory,url,platform,const DeepCollectionEquality().hash(_changes));

@override
String toString() {
  return 'Item(version: $version, shortVersion: $shortVersion, date: $date, mandatory: $mandatory, url: $url, platform: $platform, changes: $changes)';
}


}

/// @nodoc
abstract mixin class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) _then) = __$ItemCopyWithImpl;
@override @useResult
$Res call({
 String version, int shortVersion, DateTime date, bool mandatory, Uri url, Platform platform, List<Change>? changes
});




}
/// @nodoc
class __$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(this._self, this._then);

  final _Item _self;
  final $Res Function(_Item) _then;

/// Create a copy of Item
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? shortVersion = null,Object? date = null,Object? mandatory = null,Object? url = null,Object? platform = null,Object? changes = freezed,}) {
  return _then(_Item(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,shortVersion: null == shortVersion ? _self.shortVersion : shortVersion // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,mandatory: null == mandatory ? _self.mandatory : mandatory // ignore: cast_nullable_to_non_nullable
as bool,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as Uri,platform: null == platform ? _self.platform : platform // ignore: cast_nullable_to_non_nullable
as Platform,changes: freezed == changes ? _self._changes : changes // ignore: cast_nullable_to_non_nullable
as List<Change>?,
  ));
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
mixin _$FileHash {

 String get path; String get hash; int get length;
/// Create a copy of FileHash
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileHashCopyWith<FileHash> get copyWith => _$FileHashCopyWithImpl<FileHash>(this as FileHash, _$identity);

  /// Serializes this FileHash to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileHash&&(identical(other.path, path) || other.path == path)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,hash,length);

@override
String toString() {
  return 'FileHash(path: $path, hash: $hash, length: $length)';
}


}

/// @nodoc
abstract mixin class $FileHashCopyWith<$Res>  {
  factory $FileHashCopyWith(FileHash value, $Res Function(FileHash) _then) = _$FileHashCopyWithImpl;
@useResult
$Res call({
 String path, String hash, int length
});




}
/// @nodoc
class _$FileHashCopyWithImpl<$Res>
    implements $FileHashCopyWith<$Res> {
  _$FileHashCopyWithImpl(this._self, this._then);

  final FileHash _self;
  final $Res Function(FileHash) _then;

/// Create a copy of FileHash
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,Object? hash = null,Object? length = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FileHash].
extension FileHashPatterns on FileHash {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FileHash value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FileHash() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FileHash value)  $default,){
final _that = this;
switch (_that) {
case _FileHash():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FileHash value)?  $default,){
final _that = this;
switch (_that) {
case _FileHash() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String path,  String hash,  int length)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FileHash() when $default != null:
return $default(_that.path,_that.hash,_that.length);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String path,  String hash,  int length)  $default,) {final _that = this;
switch (_that) {
case _FileHash():
return $default(_that.path,_that.hash,_that.length);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String path,  String hash,  int length)?  $default,) {final _that = this;
switch (_that) {
case _FileHash() when $default != null:
return $default(_that.path,_that.hash,_that.length);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FileHash implements FileHash {
  const _FileHash({required this.path, required this.hash, required this.length});
  factory _FileHash.fromJson(Map<String, dynamic> json) => _$FileHashFromJson(json);

@override final  String path;
@override final  String hash;
@override final  int length;

/// Create a copy of FileHash
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FileHashCopyWith<_FileHash> get copyWith => __$FileHashCopyWithImpl<_FileHash>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FileHashToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FileHash&&(identical(other.path, path) || other.path == path)&&(identical(other.hash, hash) || other.hash == hash)&&(identical(other.length, length) || other.length == length));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,hash,length);

@override
String toString() {
  return 'FileHash(path: $path, hash: $hash, length: $length)';
}


}

/// @nodoc
abstract mixin class _$FileHashCopyWith<$Res> implements $FileHashCopyWith<$Res> {
  factory _$FileHashCopyWith(_FileHash value, $Res Function(_FileHash) _then) = __$FileHashCopyWithImpl;
@override @useResult
$Res call({
 String path, String hash, int length
});




}
/// @nodoc
class __$FileHashCopyWithImpl<$Res>
    implements _$FileHashCopyWith<$Res> {
  __$FileHashCopyWithImpl(this._self, this._then);

  final _FileHash _self;
  final $Res Function(_FileHash) _then;

/// Create a copy of FileHash
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? hash = null,Object? length = null,}) {
  return _then(_FileHash(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
