// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppStateInitializing initializing() {
    return const _AppStateInitializing();
  }

  _AppStateNotAuthenticated notAuthenticated() {
    return const _AppStateNotAuthenticated();
  }

  _AppStateNotAuthenticationFailed authenticationFailed() {
    return const _AppStateNotAuthenticationFailed();
  }

  _AppStateAuthenticating authenticating() {
    return const _AppStateAuthenticating();
  }

  _AppStateAuthenticated authenticated(
      {required MicropubMe me,
      required ApiClient client,
      required PackagesState packages}) {
    return _AppStateAuthenticated(
      me: me,
      client: client,
      packages: packages,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(
            MicropubMe me, ApiClient client, PackagesState packages)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitializing value) initializing,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(_AppStateAuthenticating value) authenticating,
    required TResult Function(_AppStateAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$AppStateInitializingCopyWith<$Res> {
  factory _$AppStateInitializingCopyWith(_AppStateInitializing value,
          $Res Function(_AppStateInitializing) then) =
      __$AppStateInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStateInitializingCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateInitializingCopyWith<$Res> {
  __$AppStateInitializingCopyWithImpl(
      _AppStateInitializing _value, $Res Function(_AppStateInitializing) _then)
      : super(_value, (v) => _then(v as _AppStateInitializing));

  @override
  _AppStateInitializing get _value => super._value as _AppStateInitializing;
}

/// @nodoc

class _$_AppStateInitializing implements _AppStateInitializing {
  const _$_AppStateInitializing();

  @override
  String toString() {
    return 'AppState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppStateInitializing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(
            MicropubMe me, ApiClient client, PackagesState packages)
        authenticated,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitializing value) initializing,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(_AppStateAuthenticating value) authenticating,
    required TResult Function(_AppStateAuthenticated value) authenticated,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class _AppStateInitializing implements AppState {
  const factory _AppStateInitializing() = _$_AppStateInitializing;
}

/// @nodoc
abstract class _$AppStateNotAuthenticatedCopyWith<$Res> {
  factory _$AppStateNotAuthenticatedCopyWith(_AppStateNotAuthenticated value,
          $Res Function(_AppStateNotAuthenticated) then) =
      __$AppStateNotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStateNotAuthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateNotAuthenticatedCopyWith<$Res> {
  __$AppStateNotAuthenticatedCopyWithImpl(_AppStateNotAuthenticated _value,
      $Res Function(_AppStateNotAuthenticated) _then)
      : super(_value, (v) => _then(v as _AppStateNotAuthenticated));

  @override
  _AppStateNotAuthenticated get _value =>
      super._value as _AppStateNotAuthenticated;
}

/// @nodoc

class _$_AppStateNotAuthenticated implements _AppStateNotAuthenticated {
  const _$_AppStateNotAuthenticated();

  @override
  String toString() {
    return 'AppState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppStateNotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(
            MicropubMe me, ApiClient client, PackagesState packages)
        authenticated,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitializing value) initializing,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(_AppStateAuthenticating value) authenticating,
    required TResult Function(_AppStateAuthenticated value) authenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _AppStateNotAuthenticated implements AppState {
  const factory _AppStateNotAuthenticated() = _$_AppStateNotAuthenticated;
}

/// @nodoc
abstract class _$AppStateNotAuthenticationFailedCopyWith<$Res> {
  factory _$AppStateNotAuthenticationFailedCopyWith(
          _AppStateNotAuthenticationFailed value,
          $Res Function(_AppStateNotAuthenticationFailed) then) =
      __$AppStateNotAuthenticationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStateNotAuthenticationFailedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateNotAuthenticationFailedCopyWith<$Res> {
  __$AppStateNotAuthenticationFailedCopyWithImpl(
      _AppStateNotAuthenticationFailed _value,
      $Res Function(_AppStateNotAuthenticationFailed) _then)
      : super(_value, (v) => _then(v as _AppStateNotAuthenticationFailed));

  @override
  _AppStateNotAuthenticationFailed get _value =>
      super._value as _AppStateNotAuthenticationFailed;
}

/// @nodoc

class _$_AppStateNotAuthenticationFailed
    implements _AppStateNotAuthenticationFailed {
  const _$_AppStateNotAuthenticationFailed();

  @override
  String toString() {
    return 'AppState.authenticationFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppStateNotAuthenticationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(
            MicropubMe me, ApiClient client, PackagesState packages)
        authenticated,
  }) {
    return authenticationFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
  }) {
    return authenticationFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitializing value) initializing,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(_AppStateAuthenticating value) authenticating,
    required TResult Function(_AppStateAuthenticated value) authenticated,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class _AppStateNotAuthenticationFailed implements AppState {
  const factory _AppStateNotAuthenticationFailed() =
      _$_AppStateNotAuthenticationFailed;
}

/// @nodoc
abstract class _$AppStateAuthenticatingCopyWith<$Res> {
  factory _$AppStateAuthenticatingCopyWith(_AppStateAuthenticating value,
          $Res Function(_AppStateAuthenticating) then) =
      __$AppStateAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AppStateAuthenticatingCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateAuthenticatingCopyWith<$Res> {
  __$AppStateAuthenticatingCopyWithImpl(_AppStateAuthenticating _value,
      $Res Function(_AppStateAuthenticating) _then)
      : super(_value, (v) => _then(v as _AppStateAuthenticating));

  @override
  _AppStateAuthenticating get _value => super._value as _AppStateAuthenticating;
}

/// @nodoc

class _$_AppStateAuthenticating implements _AppStateAuthenticating {
  const _$_AppStateAuthenticating();

  @override
  String toString() {
    return 'AppState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AppStateAuthenticating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(
            MicropubMe me, ApiClient client, PackagesState packages)
        authenticated,
  }) {
    return authenticating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
  }) {
    return authenticating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitializing value) initializing,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(_AppStateAuthenticating value) authenticating,
    required TResult Function(_AppStateAuthenticated value) authenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class _AppStateAuthenticating implements AppState {
  const factory _AppStateAuthenticating() = _$_AppStateAuthenticating;
}

/// @nodoc
abstract class _$AppStateAuthenticatedCopyWith<$Res> {
  factory _$AppStateAuthenticatedCopyWith(_AppStateAuthenticated value,
          $Res Function(_AppStateAuthenticated) then) =
      __$AppStateAuthenticatedCopyWithImpl<$Res>;
  $Res call({MicropubMe me, ApiClient client, PackagesState packages});

  $MicropubMeCopyWith<$Res> get me;
  $PackagesStateCopyWith<$Res> get packages;
}

/// @nodoc
class __$AppStateAuthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateAuthenticatedCopyWith<$Res> {
  __$AppStateAuthenticatedCopyWithImpl(_AppStateAuthenticated _value,
      $Res Function(_AppStateAuthenticated) _then)
      : super(_value, (v) => _then(v as _AppStateAuthenticated));

  @override
  _AppStateAuthenticated get _value => super._value as _AppStateAuthenticated;

  @override
  $Res call({
    Object? me = freezed,
    Object? client = freezed,
    Object? packages = freezed,
  }) {
    return _then(_AppStateAuthenticated(
      me: me == freezed
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as MicropubMe,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ApiClient,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as PackagesState,
    ));
  }

  @override
  $MicropubMeCopyWith<$Res> get me {
    return $MicropubMeCopyWith<$Res>(_value.me, (value) {
      return _then(_value.copyWith(me: value));
    });
  }

  @override
  $PackagesStateCopyWith<$Res> get packages {
    return $PackagesStateCopyWith<$Res>(_value.packages, (value) {
      return _then(_value.copyWith(packages: value));
    });
  }
}

/// @nodoc

class _$_AppStateAuthenticated implements _AppStateAuthenticated {
  const _$_AppStateAuthenticated(
      {required this.me, required this.client, required this.packages});

  @override
  final MicropubMe me;
  @override
  final ApiClient client;
  @override
  final PackagesState packages;

  @override
  String toString() {
    return 'AppState.authenticated(me: $me, client: $client, packages: $packages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppStateAuthenticated &&
            const DeepCollectionEquality().equals(other.me, me) &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.packages, packages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(me),
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(packages));

  @JsonKey(ignore: true)
  @override
  _$AppStateAuthenticatedCopyWith<_AppStateAuthenticated> get copyWith =>
      __$AppStateAuthenticatedCopyWithImpl<_AppStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(
            MicropubMe me, ApiClient client, PackagesState packages)
        authenticated,
  }) {
    return authenticated(me, client, packages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
  }) {
    return authenticated?.call(me, client, packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, ApiClient client, PackagesState packages)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(me, client, packages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppStateInitializing value) initializing,
    required TResult Function(_AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(_AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(_AppStateAuthenticating value) authenticating,
    required TResult Function(_AppStateAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppStateInitializing value)? initializing,
    TResult Function(_AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(_AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(_AppStateAuthenticating value)? authenticating,
    TResult Function(_AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AppStateAuthenticated implements AppState {
  const factory _AppStateAuthenticated(
      {required MicropubMe me,
      required ApiClient client,
      required PackagesState packages}) = _$_AppStateAuthenticated;

  MicropubMe get me;
  ApiClient get client;
  PackagesState get packages;
  @JsonKey(ignore: true)
  _$AppStateAuthenticatedCopyWith<_AppStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PackagesStateTearOff {
  const _$PackagesStateTearOff();

  _PackagesNotLoaded notLoaded({required int page, required int pageSize}) {
    return _PackagesNotLoaded(
      page: page,
      pageSize: pageSize,
    );
  }

  _PackagesLoading loading({required int page, required int pageSize}) {
    return _PackagesLoading(
      page: page,
      pageSize: pageSize,
    );
  }

  _PackagesFailed failed(
      {required int page, required int pageSize, required dynamic error}) {
    return _PackagesFailed(
      page: page,
      pageSize: pageSize,
      error: error,
    );
  }

  _PackagesEmpty empty({required int page, required int pageSize}) {
    return _PackagesEmpty(
      page: page,
      pageSize: pageSize,
    );
  }

  _PackagesResult result(
      {required int page,
      required int pageSize,
      required int totalPages,
      required MicropubQueryResult result}) {
    return _PackagesResult(
      page: page,
      pageSize: pageSize,
      totalPages: totalPages,
      result: result,
    );
  }
}

/// @nodoc
const $PackagesState = _$PackagesStateTearOff();

/// @nodoc
mixin _$PackagesState {
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) notLoaded,
    required TResult Function(int page, int pageSize) loading,
    required TResult Function(int page, int pageSize, dynamic error) failed,
    required TResult Function(int page, int pageSize) empty,
    required TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackagesNotLoaded value) notLoaded,
    required TResult Function(_PackagesLoading value) loading,
    required TResult Function(_PackagesFailed value) failed,
    required TResult Function(_PackagesEmpty value) empty,
    required TResult Function(_PackagesResult value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PackagesStateCopyWith<PackagesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesStateCopyWith<$Res> {
  factory $PackagesStateCopyWith(
          PackagesState value, $Res Function(PackagesState) then) =
      _$PackagesStateCopyWithImpl<$Res>;
  $Res call({int page, int pageSize});
}

/// @nodoc
class _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesStateCopyWith<$Res> {
  _$PackagesStateCopyWithImpl(this._value, this._then);

  final PackagesState _value;
  // ignore: unused_field
  final $Res Function(PackagesState) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PackagesNotLoadedCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$PackagesNotLoadedCopyWith(
          _PackagesNotLoaded value, $Res Function(_PackagesNotLoaded) then) =
      __$PackagesNotLoadedCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$PackagesNotLoadedCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements _$PackagesNotLoadedCopyWith<$Res> {
  __$PackagesNotLoadedCopyWithImpl(
      _PackagesNotLoaded _value, $Res Function(_PackagesNotLoaded) _then)
      : super(_value, (v) => _then(v as _PackagesNotLoaded));

  @override
  _PackagesNotLoaded get _value => super._value as _PackagesNotLoaded;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_PackagesNotLoaded(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PackagesNotLoaded implements _PackagesNotLoaded {
  const _$_PackagesNotLoaded({required this.page, required this.pageSize});

  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'PackagesState.notLoaded(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagesNotLoaded &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize));

  @JsonKey(ignore: true)
  @override
  _$PackagesNotLoadedCopyWith<_PackagesNotLoaded> get copyWith =>
      __$PackagesNotLoadedCopyWithImpl<_PackagesNotLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) notLoaded,
    required TResult Function(int page, int pageSize) loading,
    required TResult Function(int page, int pageSize, dynamic error) failed,
    required TResult Function(int page, int pageSize) empty,
    required TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)
        result,
  }) {
    return notLoaded(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
  }) {
    return notLoaded?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackagesNotLoaded value) notLoaded,
    required TResult Function(_PackagesLoading value) loading,
    required TResult Function(_PackagesFailed value) failed,
    required TResult Function(_PackagesEmpty value) empty,
    required TResult Function(_PackagesResult value) result,
  }) {
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
  }) {
    return notLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class _PackagesNotLoaded implements PackagesState {
  const factory _PackagesNotLoaded({required int page, required int pageSize}) =
      _$_PackagesNotLoaded;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$PackagesNotLoadedCopyWith<_PackagesNotLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PackagesLoadingCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$PackagesLoadingCopyWith(
          _PackagesLoading value, $Res Function(_PackagesLoading) then) =
      __$PackagesLoadingCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$PackagesLoadingCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements _$PackagesLoadingCopyWith<$Res> {
  __$PackagesLoadingCopyWithImpl(
      _PackagesLoading _value, $Res Function(_PackagesLoading) _then)
      : super(_value, (v) => _then(v as _PackagesLoading));

  @override
  _PackagesLoading get _value => super._value as _PackagesLoading;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_PackagesLoading(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PackagesLoading implements _PackagesLoading {
  const _$_PackagesLoading({required this.page, required this.pageSize});

  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'PackagesState.loading(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagesLoading &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize));

  @JsonKey(ignore: true)
  @override
  _$PackagesLoadingCopyWith<_PackagesLoading> get copyWith =>
      __$PackagesLoadingCopyWithImpl<_PackagesLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) notLoaded,
    required TResult Function(int page, int pageSize) loading,
    required TResult Function(int page, int pageSize, dynamic error) failed,
    required TResult Function(int page, int pageSize) empty,
    required TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)
        result,
  }) {
    return loading(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
  }) {
    return loading?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackagesNotLoaded value) notLoaded,
    required TResult Function(_PackagesLoading value) loading,
    required TResult Function(_PackagesFailed value) failed,
    required TResult Function(_PackagesEmpty value) empty,
    required TResult Function(_PackagesResult value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PackagesLoading implements PackagesState {
  const factory _PackagesLoading({required int page, required int pageSize}) =
      _$_PackagesLoading;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$PackagesLoadingCopyWith<_PackagesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PackagesFailedCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$PackagesFailedCopyWith(
          _PackagesFailed value, $Res Function(_PackagesFailed) then) =
      __$PackagesFailedCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize, dynamic error});
}

/// @nodoc
class __$PackagesFailedCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements _$PackagesFailedCopyWith<$Res> {
  __$PackagesFailedCopyWithImpl(
      _PackagesFailed _value, $Res Function(_PackagesFailed) _then)
      : super(_value, (v) => _then(v as _PackagesFailed));

  @override
  _PackagesFailed get _value => super._value as _PackagesFailed;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? error = freezed,
  }) {
    return _then(_PackagesFailed(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_PackagesFailed implements _PackagesFailed {
  const _$_PackagesFailed(
      {required this.page, required this.pageSize, required this.error});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'PackagesState.failed(page: $page, pageSize: $pageSize, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagesFailed &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$PackagesFailedCopyWith<_PackagesFailed> get copyWith =>
      __$PackagesFailedCopyWithImpl<_PackagesFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) notLoaded,
    required TResult Function(int page, int pageSize) loading,
    required TResult Function(int page, int pageSize, dynamic error) failed,
    required TResult Function(int page, int pageSize) empty,
    required TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)
        result,
  }) {
    return failed(page, pageSize, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
  }) {
    return failed?.call(page, pageSize, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(page, pageSize, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackagesNotLoaded value) notLoaded,
    required TResult Function(_PackagesLoading value) loading,
    required TResult Function(_PackagesFailed value) failed,
    required TResult Function(_PackagesEmpty value) empty,
    required TResult Function(_PackagesResult value) result,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _PackagesFailed implements PackagesState {
  const factory _PackagesFailed(
      {required int page,
      required int pageSize,
      required dynamic error}) = _$_PackagesFailed;

  @override
  int get page;
  @override
  int get pageSize;
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$PackagesFailedCopyWith<_PackagesFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PackagesEmptyCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$PackagesEmptyCopyWith(
          _PackagesEmpty value, $Res Function(_PackagesEmpty) then) =
      __$PackagesEmptyCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$PackagesEmptyCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements _$PackagesEmptyCopyWith<$Res> {
  __$PackagesEmptyCopyWithImpl(
      _PackagesEmpty _value, $Res Function(_PackagesEmpty) _then)
      : super(_value, (v) => _then(v as _PackagesEmpty));

  @override
  _PackagesEmpty get _value => super._value as _PackagesEmpty;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
  }) {
    return _then(_PackagesEmpty(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PackagesEmpty implements _PackagesEmpty {
  const _$_PackagesEmpty({required this.page, required this.pageSize});

  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString() {
    return 'PackagesState.empty(page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagesEmpty &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize));

  @JsonKey(ignore: true)
  @override
  _$PackagesEmptyCopyWith<_PackagesEmpty> get copyWith =>
      __$PackagesEmptyCopyWithImpl<_PackagesEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) notLoaded,
    required TResult Function(int page, int pageSize) loading,
    required TResult Function(int page, int pageSize, dynamic error) failed,
    required TResult Function(int page, int pageSize) empty,
    required TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)
        result,
  }) {
    return empty(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
  }) {
    return empty?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackagesNotLoaded value) notLoaded,
    required TResult Function(_PackagesLoading value) loading,
    required TResult Function(_PackagesFailed value) failed,
    required TResult Function(_PackagesEmpty value) empty,
    required TResult Function(_PackagesResult value) result,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _PackagesEmpty implements PackagesState {
  const factory _PackagesEmpty({required int page, required int pageSize}) =
      _$_PackagesEmpty;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$PackagesEmptyCopyWith<_PackagesEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PackagesResultCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory _$PackagesResultCopyWith(
          _PackagesResult value, $Res Function(_PackagesResult) then) =
      __$PackagesResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page, int pageSize, int totalPages, MicropubQueryResult result});

  $MicropubQueryResultCopyWith<$Res> get result;
}

/// @nodoc
class __$PackagesResultCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements _$PackagesResultCopyWith<$Res> {
  __$PackagesResultCopyWithImpl(
      _PackagesResult _value, $Res Function(_PackagesResult) _then)
      : super(_value, (v) => _then(v as _PackagesResult));

  @override
  _PackagesResult get _value => super._value as _PackagesResult;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
    Object? result = freezed,
  }) {
    return _then(_PackagesResult(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MicropubQueryResult,
    ));
  }

  @override
  $MicropubQueryResultCopyWith<$Res> get result {
    return $MicropubQueryResultCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$_PackagesResult implements _PackagesResult {
  const _$_PackagesResult(
      {required this.page,
      required this.pageSize,
      required this.totalPages,
      required this.result});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final MicropubQueryResult result;

  @override
  String toString() {
    return 'PackagesState.result(page: $page, pageSize: $pageSize, totalPages: $totalPages, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackagesResult &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$PackagesResultCopyWith<_PackagesResult> get copyWith =>
      __$PackagesResultCopyWithImpl<_PackagesResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) notLoaded,
    required TResult Function(int page, int pageSize) loading,
    required TResult Function(int page, int pageSize, dynamic error) failed,
    required TResult Function(int page, int pageSize) empty,
    required TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)
        result,
  }) {
    return result(page, pageSize, totalPages, this.result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
  }) {
    return result?.call(page, pageSize, totalPages, this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? notLoaded,
    TResult Function(int page, int pageSize)? loading,
    TResult Function(int page, int pageSize, dynamic error)? failed,
    TResult Function(int page, int pageSize)? empty,
    TResult Function(
            int page, int pageSize, int totalPages, MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(page, pageSize, totalPages, this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackagesNotLoaded value) notLoaded,
    required TResult Function(_PackagesLoading value) loading,
    required TResult Function(_PackagesFailed value) failed,
    required TResult Function(_PackagesEmpty value) empty,
    required TResult Function(_PackagesResult value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackagesNotLoaded value)? notLoaded,
    TResult Function(_PackagesLoading value)? loading,
    TResult Function(_PackagesFailed value)? failed,
    TResult Function(_PackagesEmpty value)? empty,
    TResult Function(_PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class _PackagesResult implements PackagesState {
  const factory _PackagesResult(
      {required int page,
      required int pageSize,
      required int totalPages,
      required MicropubQueryResult result}) = _$_PackagesResult;

  @override
  int get page;
  @override
  int get pageSize;
  int get totalPages;
  MicropubQueryResult get result;
  @override
  @JsonKey(ignore: true)
  _$PackagesResultCopyWith<_PackagesResult> get copyWith =>
      throw _privateConstructorUsedError;
}
