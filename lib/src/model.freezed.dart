// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MicropubVersion _$MicropubVersionFromJson(Map<String, dynamic> json) {
  return _MicropubVersion.fromJson(json);
}

/// @nodoc
class _$MicropubVersionTearOff {
  const _$MicropubVersionTearOff();

  _MicropubVersion call(
      {required String version,
      required Map<String, dynamic> pubspec,
      String? pubspecYaml,
      String? uploader,
      String? readme,
      String? changelog,
      @jsonDateTime DateTime? createdAt}) {
    return _MicropubVersion(
      version: version,
      pubspec: pubspec,
      pubspecYaml: pubspecYaml,
      uploader: uploader,
      readme: readme,
      changelog: changelog,
      createdAt: createdAt,
    );
  }

  MicropubVersion fromJson(Map<String, Object?> json) {
    return MicropubVersion.fromJson(json);
  }
}

/// @nodoc
const $MicropubVersion = _$MicropubVersionTearOff();

/// @nodoc
mixin _$MicropubVersion {
  String get version => throw _privateConstructorUsedError;
  Map<String, dynamic> get pubspec => throw _privateConstructorUsedError;
  String? get pubspecYaml => throw _privateConstructorUsedError;
  String? get uploader => throw _privateConstructorUsedError;
  String? get readme => throw _privateConstructorUsedError;
  String? get changelog => throw _privateConstructorUsedError;
  @jsonDateTime
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicropubVersionCopyWith<MicropubVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicropubVersionCopyWith<$Res> {
  factory $MicropubVersionCopyWith(
          MicropubVersion value, $Res Function(MicropubVersion) then) =
      _$MicropubVersionCopyWithImpl<$Res>;
  $Res call(
      {String version,
      Map<String, dynamic> pubspec,
      String? pubspecYaml,
      String? uploader,
      String? readme,
      String? changelog,
      @jsonDateTime DateTime? createdAt});
}

/// @nodoc
class _$MicropubVersionCopyWithImpl<$Res>
    implements $MicropubVersionCopyWith<$Res> {
  _$MicropubVersionCopyWithImpl(this._value, this._then);

  final MicropubVersion _value;
  // ignore: unused_field
  final $Res Function(MicropubVersion) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? pubspec = freezed,
    Object? pubspecYaml = freezed,
    Object? uploader = freezed,
    Object? readme = freezed,
    Object? changelog = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pubspecYaml: pubspecYaml == freezed
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as String?,
      uploader: uploader == freezed
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String?,
      readme: readme == freezed
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: changelog == freezed
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MicropubVersionCopyWith<$Res>
    implements $MicropubVersionCopyWith<$Res> {
  factory _$MicropubVersionCopyWith(
          _MicropubVersion value, $Res Function(_MicropubVersion) then) =
      __$MicropubVersionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String version,
      Map<String, dynamic> pubspec,
      String? pubspecYaml,
      String? uploader,
      String? readme,
      String? changelog,
      @jsonDateTime DateTime? createdAt});
}

/// @nodoc
class __$MicropubVersionCopyWithImpl<$Res>
    extends _$MicropubVersionCopyWithImpl<$Res>
    implements _$MicropubVersionCopyWith<$Res> {
  __$MicropubVersionCopyWithImpl(
      _MicropubVersion _value, $Res Function(_MicropubVersion) _then)
      : super(_value, (v) => _then(v as _MicropubVersion));

  @override
  _MicropubVersion get _value => super._value as _MicropubVersion;

  @override
  $Res call({
    Object? version = freezed,
    Object? pubspec = freezed,
    Object? pubspecYaml = freezed,
    Object? uploader = freezed,
    Object? readme = freezed,
    Object? changelog = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_MicropubVersion(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      pubspec: pubspec == freezed
          ? _value.pubspec
          : pubspec // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      pubspecYaml: pubspecYaml == freezed
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as String?,
      uploader: uploader == freezed
          ? _value.uploader
          : uploader // ignore: cast_nullable_to_non_nullable
              as String?,
      readme: readme == freezed
          ? _value.readme
          : readme // ignore: cast_nullable_to_non_nullable
              as String?,
      changelog: changelog == freezed
          ? _value.changelog
          : changelog // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MicropubVersion implements _MicropubVersion {
  const _$_MicropubVersion(
      {required this.version,
      required this.pubspec,
      this.pubspecYaml,
      this.uploader,
      this.readme,
      this.changelog,
      @jsonDateTime this.createdAt});

  factory _$_MicropubVersion.fromJson(Map<String, dynamic> json) =>
      _$$_MicropubVersionFromJson(json);

  @override
  final String version;
  @override
  final Map<String, dynamic> pubspec;
  @override
  final String? pubspecYaml;
  @override
  final String? uploader;
  @override
  final String? readme;
  @override
  final String? changelog;
  @override
  @jsonDateTime
  final DateTime? createdAt;

  @override
  String toString() {
    return 'MicropubVersion(version: $version, pubspec: $pubspec, pubspecYaml: $pubspecYaml, uploader: $uploader, readme: $readme, changelog: $changelog, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MicropubVersion &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality().equals(other.pubspec, pubspec) &&
            const DeepCollectionEquality()
                .equals(other.pubspecYaml, pubspecYaml) &&
            const DeepCollectionEquality().equals(other.uploader, uploader) &&
            const DeepCollectionEquality().equals(other.readme, readme) &&
            const DeepCollectionEquality().equals(other.changelog, changelog) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(pubspec),
      const DeepCollectionEquality().hash(pubspecYaml),
      const DeepCollectionEquality().hash(uploader),
      const DeepCollectionEquality().hash(readme),
      const DeepCollectionEquality().hash(changelog),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$MicropubVersionCopyWith<_MicropubVersion> get copyWith =>
      __$MicropubVersionCopyWithImpl<_MicropubVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicropubVersionToJson(this);
  }
}

abstract class _MicropubVersion implements MicropubVersion {
  const factory _MicropubVersion(
      {required String version,
      required Map<String, dynamic> pubspec,
      String? pubspecYaml,
      String? uploader,
      String? readme,
      String? changelog,
      @jsonDateTime DateTime? createdAt}) = _$_MicropubVersion;

  factory _MicropubVersion.fromJson(Map<String, dynamic> json) =
      _$_MicropubVersion.fromJson;

  @override
  String get version;
  @override
  Map<String, dynamic> get pubspec;
  @override
  String? get pubspecYaml;
  @override
  String? get uploader;
  @override
  String? get readme;
  @override
  String? get changelog;
  @override
  @jsonDateTime
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$MicropubVersionCopyWith<_MicropubVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

MicropubPackage _$MicropubPackageFromJson(Map<String, dynamic> json) {
  return _MicropubPackage.fromJson(json);
}

/// @nodoc
class _$MicropubPackageTearOff {
  const _$MicropubPackageTearOff();

  _MicropubPackage call(
      {required String name,
      required List<MicropubVersion> versions,
      List<String>? uploaders,
      int? download,
      @jsonDateTime DateTime? createdAt,
      @jsonDateTime DateTime? updatedAt}) {
    return _MicropubPackage(
      name: name,
      versions: versions,
      uploaders: uploaders,
      download: download,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  MicropubPackage fromJson(Map<String, Object?> json) {
    return MicropubPackage.fromJson(json);
  }
}

/// @nodoc
const $MicropubPackage = _$MicropubPackageTearOff();

/// @nodoc
mixin _$MicropubPackage {
  String get name => throw _privateConstructorUsedError;
  List<MicropubVersion> get versions => throw _privateConstructorUsedError;
  List<String>? get uploaders => throw _privateConstructorUsedError;
  int? get download => throw _privateConstructorUsedError;
  @jsonDateTime
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @jsonDateTime
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicropubPackageCopyWith<MicropubPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicropubPackageCopyWith<$Res> {
  factory $MicropubPackageCopyWith(
          MicropubPackage value, $Res Function(MicropubPackage) then) =
      _$MicropubPackageCopyWithImpl<$Res>;
  $Res call(
      {String name,
      List<MicropubVersion> versions,
      List<String>? uploaders,
      int? download,
      @jsonDateTime DateTime? createdAt,
      @jsonDateTime DateTime? updatedAt});
}

/// @nodoc
class _$MicropubPackageCopyWithImpl<$Res>
    implements $MicropubPackageCopyWith<$Res> {
  _$MicropubPackageCopyWithImpl(this._value, this._then);

  final MicropubPackage _value;
  // ignore: unused_field
  final $Res Function(MicropubPackage) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
    Object? uploaders = freezed,
    Object? download = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<MicropubVersion>,
      uploaders: uploaders == freezed
          ? _value.uploaders
          : uploaders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      download: download == freezed
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MicropubPackageCopyWith<$Res>
    implements $MicropubPackageCopyWith<$Res> {
  factory _$MicropubPackageCopyWith(
          _MicropubPackage value, $Res Function(_MicropubPackage) then) =
      __$MicropubPackageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      List<MicropubVersion> versions,
      List<String>? uploaders,
      int? download,
      @jsonDateTime DateTime? createdAt,
      @jsonDateTime DateTime? updatedAt});
}

/// @nodoc
class __$MicropubPackageCopyWithImpl<$Res>
    extends _$MicropubPackageCopyWithImpl<$Res>
    implements _$MicropubPackageCopyWith<$Res> {
  __$MicropubPackageCopyWithImpl(
      _MicropubPackage _value, $Res Function(_MicropubPackage) _then)
      : super(_value, (v) => _then(v as _MicropubPackage));

  @override
  _MicropubPackage get _value => super._value as _MicropubPackage;

  @override
  $Res call({
    Object? name = freezed,
    Object? versions = freezed,
    Object? uploaders = freezed,
    Object? download = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_MicropubPackage(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      versions: versions == freezed
          ? _value.versions
          : versions // ignore: cast_nullable_to_non_nullable
              as List<MicropubVersion>,
      uploaders: uploaders == freezed
          ? _value.uploaders
          : uploaders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      download: download == freezed
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MicropubPackage implements _MicropubPackage {
  const _$_MicropubPackage(
      {required this.name,
      required this.versions,
      this.uploaders,
      this.download,
      @jsonDateTime this.createdAt,
      @jsonDateTime this.updatedAt});

  factory _$_MicropubPackage.fromJson(Map<String, dynamic> json) =>
      _$$_MicropubPackageFromJson(json);

  @override
  final String name;
  @override
  final List<MicropubVersion> versions;
  @override
  final List<String>? uploaders;
  @override
  final int? download;
  @override
  @jsonDateTime
  final DateTime? createdAt;
  @override
  @jsonDateTime
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MicropubPackage(name: $name, versions: $versions, uploaders: $uploaders, download: $download, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MicropubPackage &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.versions, versions) &&
            const DeepCollectionEquality().equals(other.uploaders, uploaders) &&
            const DeepCollectionEquality().equals(other.download, download) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(versions),
      const DeepCollectionEquality().hash(uploaders),
      const DeepCollectionEquality().hash(download),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$MicropubPackageCopyWith<_MicropubPackage> get copyWith =>
      __$MicropubPackageCopyWithImpl<_MicropubPackage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicropubPackageToJson(this);
  }
}

abstract class _MicropubPackage implements MicropubPackage {
  const factory _MicropubPackage(
      {required String name,
      required List<MicropubVersion> versions,
      List<String>? uploaders,
      int? download,
      @jsonDateTime DateTime? createdAt,
      @jsonDateTime DateTime? updatedAt}) = _$_MicropubPackage;

  factory _MicropubPackage.fromJson(Map<String, dynamic> json) =
      _$_MicropubPackage.fromJson;

  @override
  String get name;
  @override
  List<MicropubVersion> get versions;
  @override
  List<String>? get uploaders;
  @override
  int? get download;
  @override
  @jsonDateTime
  DateTime? get createdAt;
  @override
  @jsonDateTime
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$MicropubPackageCopyWith<_MicropubPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

MicropubQueryResult _$MicropubQueryResultFromJson(Map<String, dynamic> json) {
  return _MicropubQueryResult.fromJson(json);
}

/// @nodoc
class _$MicropubQueryResultTearOff {
  const _$MicropubQueryResultTearOff();

  _MicropubQueryResult call(
      {required int count, required List<MicropubPackage> packages}) {
    return _MicropubQueryResult(
      count: count,
      packages: packages,
    );
  }

  MicropubQueryResult fromJson(Map<String, Object?> json) {
    return MicropubQueryResult.fromJson(json);
  }
}

/// @nodoc
const $MicropubQueryResult = _$MicropubQueryResultTearOff();

/// @nodoc
mixin _$MicropubQueryResult {
  int get count => throw _privateConstructorUsedError;
  List<MicropubPackage> get packages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicropubQueryResultCopyWith<MicropubQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicropubQueryResultCopyWith<$Res> {
  factory $MicropubQueryResultCopyWith(
          MicropubQueryResult value, $Res Function(MicropubQueryResult) then) =
      _$MicropubQueryResultCopyWithImpl<$Res>;
  $Res call({int count, List<MicropubPackage> packages});
}

/// @nodoc
class _$MicropubQueryResultCopyWithImpl<$Res>
    implements $MicropubQueryResultCopyWith<$Res> {
  _$MicropubQueryResultCopyWithImpl(this._value, this._then);

  final MicropubQueryResult _value;
  // ignore: unused_field
  final $Res Function(MicropubQueryResult) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? packages = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<MicropubPackage>,
    ));
  }
}

/// @nodoc
abstract class _$MicropubQueryResultCopyWith<$Res>
    implements $MicropubQueryResultCopyWith<$Res> {
  factory _$MicropubQueryResultCopyWith(_MicropubQueryResult value,
          $Res Function(_MicropubQueryResult) then) =
      __$MicropubQueryResultCopyWithImpl<$Res>;
  @override
  $Res call({int count, List<MicropubPackage> packages});
}

/// @nodoc
class __$MicropubQueryResultCopyWithImpl<$Res>
    extends _$MicropubQueryResultCopyWithImpl<$Res>
    implements _$MicropubQueryResultCopyWith<$Res> {
  __$MicropubQueryResultCopyWithImpl(
      _MicropubQueryResult _value, $Res Function(_MicropubQueryResult) _then)
      : super(_value, (v) => _then(v as _MicropubQueryResult));

  @override
  _MicropubQueryResult get _value => super._value as _MicropubQueryResult;

  @override
  $Res call({
    Object? count = freezed,
    Object? packages = freezed,
  }) {
    return _then(_MicropubQueryResult(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<MicropubPackage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MicropubQueryResult implements _MicropubQueryResult {
  const _$_MicropubQueryResult({required this.count, required this.packages});

  factory _$_MicropubQueryResult.fromJson(Map<String, dynamic> json) =>
      _$$_MicropubQueryResultFromJson(json);

  @override
  final int count;
  @override
  final List<MicropubPackage> packages;

  @override
  String toString() {
    return 'MicropubQueryResult(count: $count, packages: $packages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MicropubQueryResult &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.packages, packages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(packages));

  @JsonKey(ignore: true)
  @override
  _$MicropubQueryResultCopyWith<_MicropubQueryResult> get copyWith =>
      __$MicropubQueryResultCopyWithImpl<_MicropubQueryResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicropubQueryResultToJson(this);
  }
}

abstract class _MicropubQueryResult implements MicropubQueryResult {
  const factory _MicropubQueryResult(
      {required int count,
      required List<MicropubPackage> packages}) = _$_MicropubQueryResult;

  factory _MicropubQueryResult.fromJson(Map<String, dynamic> json) =
      _$_MicropubQueryResult.fromJson;

  @override
  int get count;
  @override
  List<MicropubPackage> get packages;
  @override
  @JsonKey(ignore: true)
  _$MicropubQueryResultCopyWith<_MicropubQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

MicropubAccessKey _$MicropubAccessKeyFromJson(Map<String, dynamic> json) {
  return _MicropubAccessKey.fromJson(json);
}

/// @nodoc
class _$MicropubAccessKeyTearOff {
  const _$MicropubAccessKeyTearOff();

  _MicropubAccessKey call(
      {required String key,
      required String email,
      required List<MicropubAuthorization> authorizations}) {
    return _MicropubAccessKey(
      key: key,
      email: email,
      authorizations: authorizations,
    );
  }

  MicropubAccessKey fromJson(Map<String, Object?> json) {
    return MicropubAccessKey.fromJson(json);
  }
}

/// @nodoc
const $MicropubAccessKey = _$MicropubAccessKeyTearOff();

/// @nodoc
mixin _$MicropubAccessKey {
  String get key => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<MicropubAuthorization> get authorizations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicropubAccessKeyCopyWith<MicropubAccessKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicropubAccessKeyCopyWith<$Res> {
  factory $MicropubAccessKeyCopyWith(
          MicropubAccessKey value, $Res Function(MicropubAccessKey) then) =
      _$MicropubAccessKeyCopyWithImpl<$Res>;
  $Res call(
      {String key, String email, List<MicropubAuthorization> authorizations});
}

/// @nodoc
class _$MicropubAccessKeyCopyWithImpl<$Res>
    implements $MicropubAccessKeyCopyWith<$Res> {
  _$MicropubAccessKeyCopyWithImpl(this._value, this._then);

  final MicropubAccessKey _value;
  // ignore: unused_field
  final $Res Function(MicropubAccessKey) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? email = freezed,
    Object? authorizations = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authorizations: authorizations == freezed
          ? _value.authorizations
          : authorizations // ignore: cast_nullable_to_non_nullable
              as List<MicropubAuthorization>,
    ));
  }
}

/// @nodoc
abstract class _$MicropubAccessKeyCopyWith<$Res>
    implements $MicropubAccessKeyCopyWith<$Res> {
  factory _$MicropubAccessKeyCopyWith(
          _MicropubAccessKey value, $Res Function(_MicropubAccessKey) then) =
      __$MicropubAccessKeyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key, String email, List<MicropubAuthorization> authorizations});
}

/// @nodoc
class __$MicropubAccessKeyCopyWithImpl<$Res>
    extends _$MicropubAccessKeyCopyWithImpl<$Res>
    implements _$MicropubAccessKeyCopyWith<$Res> {
  __$MicropubAccessKeyCopyWithImpl(
      _MicropubAccessKey _value, $Res Function(_MicropubAccessKey) _then)
      : super(_value, (v) => _then(v as _MicropubAccessKey));

  @override
  _MicropubAccessKey get _value => super._value as _MicropubAccessKey;

  @override
  $Res call({
    Object? key = freezed,
    Object? email = freezed,
    Object? authorizations = freezed,
  }) {
    return _then(_MicropubAccessKey(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      authorizations: authorizations == freezed
          ? _value.authorizations
          : authorizations // ignore: cast_nullable_to_non_nullable
              as List<MicropubAuthorization>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MicropubAccessKey implements _MicropubAccessKey {
  const _$_MicropubAccessKey(
      {required this.key, required this.email, required this.authorizations});

  factory _$_MicropubAccessKey.fromJson(Map<String, dynamic> json) =>
      _$$_MicropubAccessKeyFromJson(json);

  @override
  final String key;
  @override
  final String email;
  @override
  final List<MicropubAuthorization> authorizations;

  @override
  String toString() {
    return 'MicropubAccessKey(key: $key, email: $email, authorizations: $authorizations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MicropubAccessKey &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.authorizations, authorizations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(authorizations));

  @JsonKey(ignore: true)
  @override
  _$MicropubAccessKeyCopyWith<_MicropubAccessKey> get copyWith =>
      __$MicropubAccessKeyCopyWithImpl<_MicropubAccessKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicropubAccessKeyToJson(this);
  }
}

abstract class _MicropubAccessKey implements MicropubAccessKey {
  const factory _MicropubAccessKey(
          {required String key,
          required String email,
          required List<MicropubAuthorization> authorizations}) =
      _$_MicropubAccessKey;

  factory _MicropubAccessKey.fromJson(Map<String, dynamic> json) =
      _$_MicropubAccessKey.fromJson;

  @override
  String get key;
  @override
  String get email;
  @override
  List<MicropubAuthorization> get authorizations;
  @override
  @JsonKey(ignore: true)
  _$MicropubAccessKeyCopyWith<_MicropubAccessKey> get copyWith =>
      throw _privateConstructorUsedError;
}
