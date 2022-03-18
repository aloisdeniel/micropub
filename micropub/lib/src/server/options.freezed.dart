// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MicropubOptions _$MicropubOptionsFromJson(Map<String, dynamic> json) {
  return _MicropubOptions.fromJson(json);
}

/// @nodoc
class _$MicropubOptionsTearOff {
  const _$MicropubOptionsTearOff();

  _MicropubOptions call(
      {required String adminKey,
      required String host,
      required int port,
      String directory = '.',
      String? sslCert,
      String? sslKey}) {
    return _MicropubOptions(
      adminKey: adminKey,
      host: host,
      port: port,
      directory: directory,
      sslCert: sslCert,
      sslKey: sslKey,
    );
  }

  MicropubOptions fromJson(Map<String, Object?> json) {
    return MicropubOptions.fromJson(json);
  }
}

/// @nodoc
const $MicropubOptions = _$MicropubOptionsTearOff();

/// @nodoc
mixin _$MicropubOptions {
  String get adminKey => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get directory => throw _privateConstructorUsedError;
  String? get sslCert => throw _privateConstructorUsedError;
  String? get sslKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicropubOptionsCopyWith<MicropubOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicropubOptionsCopyWith<$Res> {
  factory $MicropubOptionsCopyWith(
          MicropubOptions value, $Res Function(MicropubOptions) then) =
      _$MicropubOptionsCopyWithImpl<$Res>;
  $Res call(
      {String adminKey,
      String host,
      int port,
      String directory,
      String? sslCert,
      String? sslKey});
}

/// @nodoc
class _$MicropubOptionsCopyWithImpl<$Res>
    implements $MicropubOptionsCopyWith<$Res> {
  _$MicropubOptionsCopyWithImpl(this._value, this._then);

  final MicropubOptions _value;
  // ignore: unused_field
  final $Res Function(MicropubOptions) _then;

  @override
  $Res call({
    Object? adminKey = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? directory = freezed,
    Object? sslCert = freezed,
    Object? sslKey = freezed,
  }) {
    return _then(_value.copyWith(
      adminKey: adminKey == freezed
          ? _value.adminKey
          : adminKey // ignore: cast_nullable_to_non_nullable
              as String,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      directory: directory == freezed
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      sslCert: sslCert == freezed
          ? _value.sslCert
          : sslCert // ignore: cast_nullable_to_non_nullable
              as String?,
      sslKey: sslKey == freezed
          ? _value.sslKey
          : sslKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MicropubOptionsCopyWith<$Res>
    implements $MicropubOptionsCopyWith<$Res> {
  factory _$MicropubOptionsCopyWith(
          _MicropubOptions value, $Res Function(_MicropubOptions) then) =
      __$MicropubOptionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String adminKey,
      String host,
      int port,
      String directory,
      String? sslCert,
      String? sslKey});
}

/// @nodoc
class __$MicropubOptionsCopyWithImpl<$Res>
    extends _$MicropubOptionsCopyWithImpl<$Res>
    implements _$MicropubOptionsCopyWith<$Res> {
  __$MicropubOptionsCopyWithImpl(
      _MicropubOptions _value, $Res Function(_MicropubOptions) _then)
      : super(_value, (v) => _then(v as _MicropubOptions));

  @override
  _MicropubOptions get _value => super._value as _MicropubOptions;

  @override
  $Res call({
    Object? adminKey = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? directory = freezed,
    Object? sslCert = freezed,
    Object? sslKey = freezed,
  }) {
    return _then(_MicropubOptions(
      adminKey: adminKey == freezed
          ? _value.adminKey
          : adminKey // ignore: cast_nullable_to_non_nullable
              as String,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      directory: directory == freezed
          ? _value.directory
          : directory // ignore: cast_nullable_to_non_nullable
              as String,
      sslCert: sslCert == freezed
          ? _value.sslCert
          : sslCert // ignore: cast_nullable_to_non_nullable
              as String?,
      sslKey: sslKey == freezed
          ? _value.sslKey
          : sslKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MicropubOptions extends _MicropubOptions {
  const _$_MicropubOptions(
      {required this.adminKey,
      required this.host,
      required this.port,
      this.directory = '.',
      this.sslCert,
      this.sslKey})
      : super._();

  factory _$_MicropubOptions.fromJson(Map<String, dynamic> json) =>
      _$$_MicropubOptionsFromJson(json);

  @override
  final String adminKey;
  @override
  final String host;
  @override
  final int port;
  @JsonKey()
  @override
  final String directory;
  @override
  final String? sslCert;
  @override
  final String? sslKey;

  @override
  String toString() {
    return 'MicropubOptions(adminKey: $adminKey, host: $host, port: $port, directory: $directory, sslCert: $sslCert, sslKey: $sslKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MicropubOptions &&
            const DeepCollectionEquality().equals(other.adminKey, adminKey) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality().equals(other.port, port) &&
            const DeepCollectionEquality().equals(other.directory, directory) &&
            const DeepCollectionEquality().equals(other.sslCert, sslCert) &&
            const DeepCollectionEquality().equals(other.sslKey, sslKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adminKey),
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(port),
      const DeepCollectionEquality().hash(directory),
      const DeepCollectionEquality().hash(sslCert),
      const DeepCollectionEquality().hash(sslKey));

  @JsonKey(ignore: true)
  @override
  _$MicropubOptionsCopyWith<_MicropubOptions> get copyWith =>
      __$MicropubOptionsCopyWithImpl<_MicropubOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicropubOptionsToJson(this);
  }
}

abstract class _MicropubOptions extends MicropubOptions {
  const factory _MicropubOptions(
      {required String adminKey,
      required String host,
      required int port,
      String directory,
      String? sslCert,
      String? sslKey}) = _$_MicropubOptions;
  const _MicropubOptions._() : super._();

  factory _MicropubOptions.fromJson(Map<String, dynamic> json) =
      _$_MicropubOptions.fromJson;

  @override
  String get adminKey;
  @override
  String get host;
  @override
  int get port;
  @override
  String get directory;
  @override
  String? get sslCert;
  @override
  String? get sslKey;
  @override
  @JsonKey(ignore: true)
  _$MicropubOptionsCopyWith<_MicropubOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
