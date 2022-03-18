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

  AppStateInitializing initializing() {
    return const AppStateInitializing();
  }

  AppStateNotAuthenticated notAuthenticated() {
    return const AppStateNotAuthenticated();
  }

  AppStateNotAuthenticationFailed authenticationFailed() {
    return const AppStateNotAuthenticationFailed();
  }

  AppStateAuthenticating authenticating() {
    return const AppStateAuthenticating();
  }

  AppStateAuthenticated authenticated(
      {required MicropubMe me,
      required MicropubApiClient client,
      required PackagesState packages,
      required AdminState admin,
      required PackageState package}) {
    return AppStateAuthenticated(
      me: me,
      client: client,
      packages: packages,
      admin: admin,
      package: package,
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
    required TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
        authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
        authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitializing value) initializing,
    required TResult Function(AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(AppStateAuthenticating value) authenticating,
    required TResult Function(AppStateAuthenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
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
abstract class $AppStateInitializingCopyWith<$Res> {
  factory $AppStateInitializingCopyWith(AppStateInitializing value,
          $Res Function(AppStateInitializing) then) =
      _$AppStateInitializingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateInitializingCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateInitializingCopyWith<$Res> {
  _$AppStateInitializingCopyWithImpl(
      AppStateInitializing _value, $Res Function(AppStateInitializing) _then)
      : super(_value, (v) => _then(v as AppStateInitializing));

  @override
  AppStateInitializing get _value => super._value as AppStateInitializing;
}

/// @nodoc

class _$AppStateInitializing implements AppStateInitializing {
  const _$AppStateInitializing();

  @override
  String toString() {
    return 'AppState.initializing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppStateInitializing);
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
    required TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    required TResult Function(AppStateInitializing value) initializing,
    required TResult Function(AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(AppStateAuthenticating value) authenticating,
    required TResult Function(AppStateAuthenticated value) authenticated,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class AppStateInitializing implements AppState {
  const factory AppStateInitializing() = _$AppStateInitializing;
}

/// @nodoc
abstract class $AppStateNotAuthenticatedCopyWith<$Res> {
  factory $AppStateNotAuthenticatedCopyWith(AppStateNotAuthenticated value,
          $Res Function(AppStateNotAuthenticated) then) =
      _$AppStateNotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateNotAuthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateNotAuthenticatedCopyWith<$Res> {
  _$AppStateNotAuthenticatedCopyWithImpl(AppStateNotAuthenticated _value,
      $Res Function(AppStateNotAuthenticated) _then)
      : super(_value, (v) => _then(v as AppStateNotAuthenticated));

  @override
  AppStateNotAuthenticated get _value =>
      super._value as AppStateNotAuthenticated;
}

/// @nodoc

class _$AppStateNotAuthenticated implements AppStateNotAuthenticated {
  const _$AppStateNotAuthenticated();

  @override
  String toString() {
    return 'AppState.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppStateNotAuthenticated);
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
    required TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    required TResult Function(AppStateInitializing value) initializing,
    required TResult Function(AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(AppStateAuthenticating value) authenticating,
    required TResult Function(AppStateAuthenticated value) authenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class AppStateNotAuthenticated implements AppState {
  const factory AppStateNotAuthenticated() = _$AppStateNotAuthenticated;
}

/// @nodoc
abstract class $AppStateNotAuthenticationFailedCopyWith<$Res> {
  factory $AppStateNotAuthenticationFailedCopyWith(
          AppStateNotAuthenticationFailed value,
          $Res Function(AppStateNotAuthenticationFailed) then) =
      _$AppStateNotAuthenticationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateNotAuthenticationFailedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateNotAuthenticationFailedCopyWith<$Res> {
  _$AppStateNotAuthenticationFailedCopyWithImpl(
      AppStateNotAuthenticationFailed _value,
      $Res Function(AppStateNotAuthenticationFailed) _then)
      : super(_value, (v) => _then(v as AppStateNotAuthenticationFailed));

  @override
  AppStateNotAuthenticationFailed get _value =>
      super._value as AppStateNotAuthenticationFailed;
}

/// @nodoc

class _$AppStateNotAuthenticationFailed
    implements AppStateNotAuthenticationFailed {
  const _$AppStateNotAuthenticationFailed();

  @override
  String toString() {
    return 'AppState.authenticationFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppStateNotAuthenticationFailed);
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
    required TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    required TResult Function(AppStateInitializing value) initializing,
    required TResult Function(AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(AppStateAuthenticating value) authenticating,
    required TResult Function(AppStateAuthenticated value) authenticated,
  }) {
    return authenticationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
  }) {
    return authenticationFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticationFailed != null) {
      return authenticationFailed(this);
    }
    return orElse();
  }
}

abstract class AppStateNotAuthenticationFailed implements AppState {
  const factory AppStateNotAuthenticationFailed() =
      _$AppStateNotAuthenticationFailed;
}

/// @nodoc
abstract class $AppStateAuthenticatingCopyWith<$Res> {
  factory $AppStateAuthenticatingCopyWith(AppStateAuthenticating value,
          $Res Function(AppStateAuthenticating) then) =
      _$AppStateAuthenticatingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateAuthenticatingCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateAuthenticatingCopyWith<$Res> {
  _$AppStateAuthenticatingCopyWithImpl(AppStateAuthenticating _value,
      $Res Function(AppStateAuthenticating) _then)
      : super(_value, (v) => _then(v as AppStateAuthenticating));

  @override
  AppStateAuthenticating get _value => super._value as AppStateAuthenticating;
}

/// @nodoc

class _$AppStateAuthenticating implements AppStateAuthenticating {
  const _$AppStateAuthenticating();

  @override
  String toString() {
    return 'AppState.authenticating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppStateAuthenticating);
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
    required TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
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
    required TResult Function(AppStateInitializing value) initializing,
    required TResult Function(AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(AppStateAuthenticating value) authenticating,
    required TResult Function(AppStateAuthenticated value) authenticated,
  }) {
    return authenticating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
  }) {
    return authenticating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticating != null) {
      return authenticating(this);
    }
    return orElse();
  }
}

abstract class AppStateAuthenticating implements AppState {
  const factory AppStateAuthenticating() = _$AppStateAuthenticating;
}

/// @nodoc
abstract class $AppStateAuthenticatedCopyWith<$Res> {
  factory $AppStateAuthenticatedCopyWith(AppStateAuthenticated value,
          $Res Function(AppStateAuthenticated) then) =
      _$AppStateAuthenticatedCopyWithImpl<$Res>;
  $Res call(
      {MicropubMe me,
      MicropubApiClient client,
      PackagesState packages,
      AdminState admin,
      PackageState package});

  $MicropubMeCopyWith<$Res> get me;
  $PackagesStateCopyWith<$Res> get packages;
  $AdminStateCopyWith<$Res> get admin;
  $PackageStateCopyWith<$Res> get package;
}

/// @nodoc
class _$AppStateAuthenticatedCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res>
    implements $AppStateAuthenticatedCopyWith<$Res> {
  _$AppStateAuthenticatedCopyWithImpl(
      AppStateAuthenticated _value, $Res Function(AppStateAuthenticated) _then)
      : super(_value, (v) => _then(v as AppStateAuthenticated));

  @override
  AppStateAuthenticated get _value => super._value as AppStateAuthenticated;

  @override
  $Res call({
    Object? me = freezed,
    Object? client = freezed,
    Object? packages = freezed,
    Object? admin = freezed,
    Object? package = freezed,
  }) {
    return _then(AppStateAuthenticated(
      me: me == freezed
          ? _value.me
          : me // ignore: cast_nullable_to_non_nullable
              as MicropubMe,
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as MicropubApiClient,
      packages: packages == freezed
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as PackagesState,
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as AdminState,
      package: package == freezed
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageState,
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

  @override
  $AdminStateCopyWith<$Res> get admin {
    return $AdminStateCopyWith<$Res>(_value.admin, (value) {
      return _then(_value.copyWith(admin: value));
    });
  }

  @override
  $PackageStateCopyWith<$Res> get package {
    return $PackageStateCopyWith<$Res>(_value.package, (value) {
      return _then(_value.copyWith(package: value));
    });
  }
}

/// @nodoc

class _$AppStateAuthenticated implements AppStateAuthenticated {
  const _$AppStateAuthenticated(
      {required this.me,
      required this.client,
      required this.packages,
      required this.admin,
      required this.package});

  @override
  final MicropubMe me;
  @override
  final MicropubApiClient client;
  @override
  final PackagesState packages;
  @override
  final AdminState admin;
  @override
  final PackageState package;

  @override
  String toString() {
    return 'AppState.authenticated(me: $me, client: $client, packages: $packages, admin: $admin, package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppStateAuthenticated &&
            const DeepCollectionEquality().equals(other.me, me) &&
            const DeepCollectionEquality().equals(other.client, client) &&
            const DeepCollectionEquality().equals(other.packages, packages) &&
            const DeepCollectionEquality().equals(other.admin, admin) &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(me),
      const DeepCollectionEquality().hash(client),
      const DeepCollectionEquality().hash(packages),
      const DeepCollectionEquality().hash(admin),
      const DeepCollectionEquality().hash(package));

  @JsonKey(ignore: true)
  @override
  $AppStateAuthenticatedCopyWith<AppStateAuthenticated> get copyWith =>
      _$AppStateAuthenticatedCopyWithImpl<AppStateAuthenticated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() notAuthenticated,
    required TResult Function() authenticationFailed,
    required TResult Function() authenticating,
    required TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)
        authenticated,
  }) {
    return authenticated(me, client, packages, admin, package);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
        authenticated,
  }) {
    return authenticated?.call(me, client, packages, admin, package);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? notAuthenticated,
    TResult Function()? authenticationFailed,
    TResult Function()? authenticating,
    TResult Function(MicropubMe me, MicropubApiClient client,
            PackagesState packages, AdminState admin, PackageState package)?
        authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(me, client, packages, admin, package);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppStateInitializing value) initializing,
    required TResult Function(AppStateNotAuthenticated value) notAuthenticated,
    required TResult Function(AppStateNotAuthenticationFailed value)
        authenticationFailed,
    required TResult Function(AppStateAuthenticating value) authenticating,
    required TResult Function(AppStateAuthenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppStateInitializing value)? initializing,
    TResult Function(AppStateNotAuthenticated value)? notAuthenticated,
    TResult Function(AppStateNotAuthenticationFailed value)?
        authenticationFailed,
    TResult Function(AppStateAuthenticating value)? authenticating,
    TResult Function(AppStateAuthenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AppStateAuthenticated implements AppState {
  const factory AppStateAuthenticated(
      {required MicropubMe me,
      required MicropubApiClient client,
      required PackagesState packages,
      required AdminState admin,
      required PackageState package}) = _$AppStateAuthenticated;

  MicropubMe get me;
  MicropubApiClient get client;
  PackagesState get packages;
  AdminState get admin;
  PackageState get package;
  @JsonKey(ignore: true)
  $AppStateAuthenticatedCopyWith<AppStateAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PackagesStateTearOff {
  const _$PackagesStateTearOff();

  PackagesNotLoaded notLoaded(
      {required int page, required int pageSize, required String query}) {
    return PackagesNotLoaded(
      page: page,
      pageSize: pageSize,
      query: query,
    );
  }

  PackagesLoading loading(
      {required int page, required int pageSize, required String query}) {
    return PackagesLoading(
      page: page,
      pageSize: pageSize,
      query: query,
    );
  }

  PackagesFailed failed(
      {required int page,
      required int pageSize,
      required String query,
      required dynamic error,
      required StackTrace? stackTrace}) {
    return PackagesFailed(
      page: page,
      pageSize: pageSize,
      query: query,
      error: error,
      stackTrace: stackTrace,
    );
  }

  PackagesEmpty empty(
      {required int page, required int pageSize, required String query}) {
    return PackagesEmpty(
      page: page,
      pageSize: pageSize,
      query: query,
    );
  }

  PackagesResult result(
      {required int page,
      required int pageSize,
      required String query,
      required int totalPages,
      required MicropubQueryResult result}) {
    return PackagesResult(
      page: page,
      pageSize: pageSize,
      query: query,
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
  String get query => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String query) notLoaded,
    required TResult Function(int page, int pageSize, String query) loading,
    required TResult Function(int page, int pageSize, String query,
            dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(int page, int pageSize, String query) empty,
    required TResult Function(int page, int pageSize, String query,
            int totalPages, MicropubQueryResult result)
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackagesNotLoaded value) notLoaded,
    required TResult Function(PackagesLoading value) loading,
    required TResult Function(PackagesFailed value) failed,
    required TResult Function(PackagesEmpty value) empty,
    required TResult Function(PackagesResult value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
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
  $Res call({int page, int pageSize, String query});
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
    Object? query = freezed,
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
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $PackagesNotLoadedCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory $PackagesNotLoadedCopyWith(
          PackagesNotLoaded value, $Res Function(PackagesNotLoaded) then) =
      _$PackagesNotLoadedCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize, String query});
}

/// @nodoc
class _$PackagesNotLoadedCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesNotLoadedCopyWith<$Res> {
  _$PackagesNotLoadedCopyWithImpl(
      PackagesNotLoaded _value, $Res Function(PackagesNotLoaded) _then)
      : super(_value, (v) => _then(v as PackagesNotLoaded));

  @override
  PackagesNotLoaded get _value => super._value as PackagesNotLoaded;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? query = freezed,
  }) {
    return _then(PackagesNotLoaded(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PackagesNotLoaded implements PackagesNotLoaded {
  const _$PackagesNotLoaded(
      {required this.page, required this.pageSize, required this.query});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String query;

  @override
  String toString() {
    return 'PackagesState.notLoaded(page: $page, pageSize: $pageSize, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackagesNotLoaded &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  $PackagesNotLoadedCopyWith<PackagesNotLoaded> get copyWith =>
      _$PackagesNotLoadedCopyWithImpl<PackagesNotLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String query) notLoaded,
    required TResult Function(int page, int pageSize, String query) loading,
    required TResult Function(int page, int pageSize, String query,
            dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(int page, int pageSize, String query) empty,
    required TResult Function(int page, int pageSize, String query,
            int totalPages, MicropubQueryResult result)
        result,
  }) {
    return notLoaded(page, pageSize, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
  }) {
    return notLoaded?.call(page, pageSize, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(page, pageSize, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackagesNotLoaded value) notLoaded,
    required TResult Function(PackagesLoading value) loading,
    required TResult Function(PackagesFailed value) failed,
    required TResult Function(PackagesEmpty value) empty,
    required TResult Function(PackagesResult value) result,
  }) {
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
  }) {
    return notLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class PackagesNotLoaded implements PackagesState {
  const factory PackagesNotLoaded(
      {required int page,
      required int pageSize,
      required String query}) = _$PackagesNotLoaded;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  $PackagesNotLoadedCopyWith<PackagesNotLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesLoadingCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory $PackagesLoadingCopyWith(
          PackagesLoading value, $Res Function(PackagesLoading) then) =
      _$PackagesLoadingCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize, String query});
}

/// @nodoc
class _$PackagesLoadingCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesLoadingCopyWith<$Res> {
  _$PackagesLoadingCopyWithImpl(
      PackagesLoading _value, $Res Function(PackagesLoading) _then)
      : super(_value, (v) => _then(v as PackagesLoading));

  @override
  PackagesLoading get _value => super._value as PackagesLoading;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? query = freezed,
  }) {
    return _then(PackagesLoading(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PackagesLoading implements PackagesLoading {
  const _$PackagesLoading(
      {required this.page, required this.pageSize, required this.query});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String query;

  @override
  String toString() {
    return 'PackagesState.loading(page: $page, pageSize: $pageSize, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackagesLoading &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  $PackagesLoadingCopyWith<PackagesLoading> get copyWith =>
      _$PackagesLoadingCopyWithImpl<PackagesLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String query) notLoaded,
    required TResult Function(int page, int pageSize, String query) loading,
    required TResult Function(int page, int pageSize, String query,
            dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(int page, int pageSize, String query) empty,
    required TResult Function(int page, int pageSize, String query,
            int totalPages, MicropubQueryResult result)
        result,
  }) {
    return loading(page, pageSize, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
  }) {
    return loading?.call(page, pageSize, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(page, pageSize, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackagesNotLoaded value) notLoaded,
    required TResult Function(PackagesLoading value) loading,
    required TResult Function(PackagesFailed value) failed,
    required TResult Function(PackagesEmpty value) empty,
    required TResult Function(PackagesResult value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PackagesLoading implements PackagesState {
  const factory PackagesLoading(
      {required int page,
      required int pageSize,
      required String query}) = _$PackagesLoading;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  $PackagesLoadingCopyWith<PackagesLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesFailedCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory $PackagesFailedCopyWith(
          PackagesFailed value, $Res Function(PackagesFailed) then) =
      _$PackagesFailedCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      int pageSize,
      String query,
      dynamic error,
      StackTrace? stackTrace});
}

/// @nodoc
class _$PackagesFailedCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesFailedCopyWith<$Res> {
  _$PackagesFailedCopyWithImpl(
      PackagesFailed _value, $Res Function(PackagesFailed) _then)
      : super(_value, (v) => _then(v as PackagesFailed));

  @override
  PackagesFailed get _value => super._value as PackagesFailed;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? query = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(PackagesFailed(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$PackagesFailed implements PackagesFailed {
  const _$PackagesFailed(
      {required this.page,
      required this.pageSize,
      required this.query,
      required this.error,
      required this.stackTrace});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String query;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'PackagesState.failed(page: $page, pageSize: $pageSize, query: $query, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackagesFailed &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $PackagesFailedCopyWith<PackagesFailed> get copyWith =>
      _$PackagesFailedCopyWithImpl<PackagesFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String query) notLoaded,
    required TResult Function(int page, int pageSize, String query) loading,
    required TResult Function(int page, int pageSize, String query,
            dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(int page, int pageSize, String query) empty,
    required TResult Function(int page, int pageSize, String query,
            int totalPages, MicropubQueryResult result)
        result,
  }) {
    return failed(page, pageSize, query, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
  }) {
    return failed?.call(page, pageSize, query, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(page, pageSize, query, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackagesNotLoaded value) notLoaded,
    required TResult Function(PackagesLoading value) loading,
    required TResult Function(PackagesFailed value) failed,
    required TResult Function(PackagesEmpty value) empty,
    required TResult Function(PackagesResult value) result,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PackagesFailed implements PackagesState {
  const factory PackagesFailed(
      {required int page,
      required int pageSize,
      required String query,
      required dynamic error,
      required StackTrace? stackTrace}) = _$PackagesFailed;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get query;
  dynamic get error;
  StackTrace? get stackTrace;
  @override
  @JsonKey(ignore: true)
  $PackagesFailedCopyWith<PackagesFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesEmptyCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory $PackagesEmptyCopyWith(
          PackagesEmpty value, $Res Function(PackagesEmpty) then) =
      _$PackagesEmptyCopyWithImpl<$Res>;
  @override
  $Res call({int page, int pageSize, String query});
}

/// @nodoc
class _$PackagesEmptyCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesEmptyCopyWith<$Res> {
  _$PackagesEmptyCopyWithImpl(
      PackagesEmpty _value, $Res Function(PackagesEmpty) _then)
      : super(_value, (v) => _then(v as PackagesEmpty));

  @override
  PackagesEmpty get _value => super._value as PackagesEmpty;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? query = freezed,
  }) {
    return _then(PackagesEmpty(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PackagesEmpty implements PackagesEmpty {
  const _$PackagesEmpty(
      {required this.page, required this.pageSize, required this.query});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String query;

  @override
  String toString() {
    return 'PackagesState.empty(page: $page, pageSize: $pageSize, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackagesEmpty &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  $PackagesEmptyCopyWith<PackagesEmpty> get copyWith =>
      _$PackagesEmptyCopyWithImpl<PackagesEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String query) notLoaded,
    required TResult Function(int page, int pageSize, String query) loading,
    required TResult Function(int page, int pageSize, String query,
            dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(int page, int pageSize, String query) empty,
    required TResult Function(int page, int pageSize, String query,
            int totalPages, MicropubQueryResult result)
        result,
  }) {
    return empty(page, pageSize, query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
  }) {
    return empty?.call(page, pageSize, query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(page, pageSize, query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackagesNotLoaded value) notLoaded,
    required TResult Function(PackagesLoading value) loading,
    required TResult Function(PackagesFailed value) failed,
    required TResult Function(PackagesEmpty value) empty,
    required TResult Function(PackagesResult value) result,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PackagesEmpty implements PackagesState {
  const factory PackagesEmpty(
      {required int page,
      required int pageSize,
      required String query}) = _$PackagesEmpty;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  $PackagesEmptyCopyWith<PackagesEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesResultCopyWith<$Res>
    implements $PackagesStateCopyWith<$Res> {
  factory $PackagesResultCopyWith(
          PackagesResult value, $Res Function(PackagesResult) then) =
      _$PackagesResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      int pageSize,
      String query,
      int totalPages,
      MicropubQueryResult result});

  $MicropubQueryResultCopyWith<$Res> get result;
}

/// @nodoc
class _$PackagesResultCopyWithImpl<$Res>
    extends _$PackagesStateCopyWithImpl<$Res>
    implements $PackagesResultCopyWith<$Res> {
  _$PackagesResultCopyWithImpl(
      PackagesResult _value, $Res Function(PackagesResult) _then)
      : super(_value, (v) => _then(v as PackagesResult));

  @override
  PackagesResult get _value => super._value as PackagesResult;

  @override
  $Res call({
    Object? page = freezed,
    Object? pageSize = freezed,
    Object? query = freezed,
    Object? totalPages = freezed,
    Object? result = freezed,
  }) {
    return _then(PackagesResult(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$PackagesResult implements PackagesResult {
  const _$PackagesResult(
      {required this.page,
      required this.pageSize,
      required this.query,
      required this.totalPages,
      required this.result});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String query;
  @override
  final int totalPages;
  @override
  final MicropubQueryResult result;

  @override
  String toString() {
    return 'PackagesState.result(page: $page, pageSize: $pageSize, query: $query, totalPages: $totalPages, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackagesResult &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $PackagesResultCopyWith<PackagesResult> get copyWith =>
      _$PackagesResultCopyWithImpl<PackagesResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, String query) notLoaded,
    required TResult Function(int page, int pageSize, String query) loading,
    required TResult Function(int page, int pageSize, String query,
            dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(int page, int pageSize, String query) empty,
    required TResult Function(int page, int pageSize, String query,
            int totalPages, MicropubQueryResult result)
        result,
  }) {
    return result(page, pageSize, query, totalPages, this.result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
  }) {
    return result?.call(page, pageSize, query, totalPages, this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, String query)? notLoaded,
    TResult Function(int page, int pageSize, String query)? loading,
    TResult Function(int page, int pageSize, String query, dynamic error,
            StackTrace? stackTrace)?
        failed,
    TResult Function(int page, int pageSize, String query)? empty,
    TResult Function(int page, int pageSize, String query, int totalPages,
            MicropubQueryResult result)?
        result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(page, pageSize, query, totalPages, this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackagesNotLoaded value) notLoaded,
    required TResult Function(PackagesLoading value) loading,
    required TResult Function(PackagesFailed value) failed,
    required TResult Function(PackagesEmpty value) empty,
    required TResult Function(PackagesResult value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackagesNotLoaded value)? notLoaded,
    TResult Function(PackagesLoading value)? loading,
    TResult Function(PackagesFailed value)? failed,
    TResult Function(PackagesEmpty value)? empty,
    TResult Function(PackagesResult value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class PackagesResult implements PackagesState {
  const factory PackagesResult(
      {required int page,
      required int pageSize,
      required String query,
      required int totalPages,
      required MicropubQueryResult result}) = _$PackagesResult;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  String get query;
  int get totalPages;
  MicropubQueryResult get result;
  @override
  @JsonKey(ignore: true)
  $PackagesResultCopyWith<PackagesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PackageStateTearOff {
  const _$PackageStateTearOff();

  PackageStateNotLoaded notLoaded() {
    return const PackageStateNotLoaded();
  }

  PackageStateLoading loading({required String packageName}) {
    return PackageStateLoading(
      packageName: packageName,
    );
  }

  PackageStateFailed failed(
      {required String packageName,
      required dynamic error,
      required StackTrace? stackTrace}) {
    return PackageStateFailed(
      packageName: packageName,
      error: error,
      stackTrace: stackTrace,
    );
  }

  PackageStateResult result(
      {required String packageName, required MicropubPackageDetails result}) {
    return PackageStateResult(
      packageName: packageName,
      result: result,
    );
  }
}

/// @nodoc
const $PackageState = _$PackageStateTearOff();

/// @nodoc
mixin _$PackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function(String packageName) loading,
    required TResult Function(
            String packageName, dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(String packageName, MicropubPackageDetails result)
        result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageStateNotLoaded value) notLoaded,
    required TResult Function(PackageStateLoading value) loading,
    required TResult Function(PackageStateFailed value) failed,
    required TResult Function(PackageStateResult value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageStateCopyWith<$Res> {
  factory $PackageStateCopyWith(
          PackageState value, $Res Function(PackageState) then) =
      _$PackageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PackageStateCopyWithImpl<$Res> implements $PackageStateCopyWith<$Res> {
  _$PackageStateCopyWithImpl(this._value, this._then);

  final PackageState _value;
  // ignore: unused_field
  final $Res Function(PackageState) _then;
}

/// @nodoc
abstract class $PackageStateNotLoadedCopyWith<$Res> {
  factory $PackageStateNotLoadedCopyWith(PackageStateNotLoaded value,
          $Res Function(PackageStateNotLoaded) then) =
      _$PackageStateNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PackageStateNotLoadedCopyWithImpl<$Res>
    extends _$PackageStateCopyWithImpl<$Res>
    implements $PackageStateNotLoadedCopyWith<$Res> {
  _$PackageStateNotLoadedCopyWithImpl(
      PackageStateNotLoaded _value, $Res Function(PackageStateNotLoaded) _then)
      : super(_value, (v) => _then(v as PackageStateNotLoaded));

  @override
  PackageStateNotLoaded get _value => super._value as PackageStateNotLoaded;
}

/// @nodoc

class _$PackageStateNotLoaded implements PackageStateNotLoaded {
  const _$PackageStateNotLoaded();

  @override
  String toString() {
    return 'PackageState.notLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PackageStateNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function(String packageName) loading,
    required TResult Function(
            String packageName, dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(String packageName, MicropubPackageDetails result)
        result,
  }) {
    return notLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
  }) {
    return notLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageStateNotLoaded value) notLoaded,
    required TResult Function(PackageStateLoading value) loading,
    required TResult Function(PackageStateFailed value) failed,
    required TResult Function(PackageStateResult value) result,
  }) {
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
  }) {
    return notLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class PackageStateNotLoaded implements PackageState {
  const factory PackageStateNotLoaded() = _$PackageStateNotLoaded;
}

/// @nodoc
abstract class $PackageStateLoadingCopyWith<$Res> {
  factory $PackageStateLoadingCopyWith(
          PackageStateLoading value, $Res Function(PackageStateLoading) then) =
      _$PackageStateLoadingCopyWithImpl<$Res>;
  $Res call({String packageName});
}

/// @nodoc
class _$PackageStateLoadingCopyWithImpl<$Res>
    extends _$PackageStateCopyWithImpl<$Res>
    implements $PackageStateLoadingCopyWith<$Res> {
  _$PackageStateLoadingCopyWithImpl(
      PackageStateLoading _value, $Res Function(PackageStateLoading) _then)
      : super(_value, (v) => _then(v as PackageStateLoading));

  @override
  PackageStateLoading get _value => super._value as PackageStateLoading;

  @override
  $Res call({
    Object? packageName = freezed,
  }) {
    return _then(PackageStateLoading(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PackageStateLoading implements PackageStateLoading {
  const _$PackageStateLoading({required this.packageName});

  @override
  final String packageName;

  @override
  String toString() {
    return 'PackageState.loading(packageName: $packageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageStateLoading &&
            const DeepCollectionEquality()
                .equals(other.packageName, packageName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(packageName));

  @JsonKey(ignore: true)
  @override
  $PackageStateLoadingCopyWith<PackageStateLoading> get copyWith =>
      _$PackageStateLoadingCopyWithImpl<PackageStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function(String packageName) loading,
    required TResult Function(
            String packageName, dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(String packageName, MicropubPackageDetails result)
        result,
  }) {
    return loading(packageName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
  }) {
    return loading?.call(packageName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(packageName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageStateNotLoaded value) notLoaded,
    required TResult Function(PackageStateLoading value) loading,
    required TResult Function(PackageStateFailed value) failed,
    required TResult Function(PackageStateResult value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PackageStateLoading implements PackageState {
  const factory PackageStateLoading({required String packageName}) =
      _$PackageStateLoading;

  String get packageName;
  @JsonKey(ignore: true)
  $PackageStateLoadingCopyWith<PackageStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageStateFailedCopyWith<$Res> {
  factory $PackageStateFailedCopyWith(
          PackageStateFailed value, $Res Function(PackageStateFailed) then) =
      _$PackageStateFailedCopyWithImpl<$Res>;
  $Res call({String packageName, dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class _$PackageStateFailedCopyWithImpl<$Res>
    extends _$PackageStateCopyWithImpl<$Res>
    implements $PackageStateFailedCopyWith<$Res> {
  _$PackageStateFailedCopyWithImpl(
      PackageStateFailed _value, $Res Function(PackageStateFailed) _then)
      : super(_value, (v) => _then(v as PackageStateFailed));

  @override
  PackageStateFailed get _value => super._value as PackageStateFailed;

  @override
  $Res call({
    Object? packageName = freezed,
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(PackageStateFailed(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$PackageStateFailed implements PackageStateFailed {
  const _$PackageStateFailed(
      {required this.packageName,
      required this.error,
      required this.stackTrace});

  @override
  final String packageName;
  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'PackageState.failed(packageName: $packageName, error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageStateFailed &&
            const DeepCollectionEquality()
                .equals(other.packageName, packageName) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(packageName),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $PackageStateFailedCopyWith<PackageStateFailed> get copyWith =>
      _$PackageStateFailedCopyWithImpl<PackageStateFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function(String packageName) loading,
    required TResult Function(
            String packageName, dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(String packageName, MicropubPackageDetails result)
        result,
  }) {
    return failed(packageName, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
  }) {
    return failed?.call(packageName, error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(packageName, error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageStateNotLoaded value) notLoaded,
    required TResult Function(PackageStateLoading value) loading,
    required TResult Function(PackageStateFailed value) failed,
    required TResult Function(PackageStateResult value) result,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PackageStateFailed implements PackageState {
  const factory PackageStateFailed(
      {required String packageName,
      required dynamic error,
      required StackTrace? stackTrace}) = _$PackageStateFailed;

  String get packageName;
  dynamic get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $PackageStateFailedCopyWith<PackageStateFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageStateResultCopyWith<$Res> {
  factory $PackageStateResultCopyWith(
          PackageStateResult value, $Res Function(PackageStateResult) then) =
      _$PackageStateResultCopyWithImpl<$Res>;
  $Res call({String packageName, MicropubPackageDetails result});

  $MicropubPackageDetailsCopyWith<$Res> get result;
}

/// @nodoc
class _$PackageStateResultCopyWithImpl<$Res>
    extends _$PackageStateCopyWithImpl<$Res>
    implements $PackageStateResultCopyWith<$Res> {
  _$PackageStateResultCopyWithImpl(
      PackageStateResult _value, $Res Function(PackageStateResult) _then)
      : super(_value, (v) => _then(v as PackageStateResult));

  @override
  PackageStateResult get _value => super._value as PackageStateResult;

  @override
  $Res call({
    Object? packageName = freezed,
    Object? result = freezed,
  }) {
    return _then(PackageStateResult(
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MicropubPackageDetails,
    ));
  }

  @override
  $MicropubPackageDetailsCopyWith<$Res> get result {
    return $MicropubPackageDetailsCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$PackageStateResult implements PackageStateResult {
  const _$PackageStateResult({required this.packageName, required this.result});

  @override
  final String packageName;
  @override
  final MicropubPackageDetails result;

  @override
  String toString() {
    return 'PackageState.result(packageName: $packageName, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageStateResult &&
            const DeepCollectionEquality()
                .equals(other.packageName, packageName) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(packageName),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  $PackageStateResultCopyWith<PackageStateResult> get copyWith =>
      _$PackageStateResultCopyWithImpl<PackageStateResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLoaded,
    required TResult Function(String packageName) loading,
    required TResult Function(
            String packageName, dynamic error, StackTrace? stackTrace)
        failed,
    required TResult Function(String packageName, MicropubPackageDetails result)
        result,
  }) {
    return result(packageName, this.result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
  }) {
    return result?.call(packageName, this.result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLoaded,
    TResult Function(String packageName)? loading,
    TResult Function(String packageName, dynamic error, StackTrace? stackTrace)?
        failed,
    TResult Function(String packageName, MicropubPackageDetails result)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(packageName, this.result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PackageStateNotLoaded value) notLoaded,
    required TResult Function(PackageStateLoading value) loading,
    required TResult Function(PackageStateFailed value) failed,
    required TResult Function(PackageStateResult value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PackageStateNotLoaded value)? notLoaded,
    TResult Function(PackageStateLoading value)? loading,
    TResult Function(PackageStateFailed value)? failed,
    TResult Function(PackageStateResult value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class PackageStateResult implements PackageState {
  const factory PackageStateResult(
      {required String packageName,
      required MicropubPackageDetails result}) = _$PackageStateResult;

  String get packageName;
  MicropubPackageDetails get result;
  @JsonKey(ignore: true)
  $PackageStateResultCopyWith<PackageStateResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdminStateTearOff {
  const _$AdminStateTearOff();

  AdminStateNotAuthorized notAuthorized() {
    return const AdminStateNotAuthorized();
  }

  AdminStateNotLoaded notLoaded() {
    return const AdminStateNotLoaded();
  }

  AdminStateLoading loading() {
    return const AdminStateLoading();
  }

  AdminFailed failed(
      {required dynamic error, required StackTrace? stackTrace}) {
    return AdminFailed(
      error: error,
      stackTrace: stackTrace,
    );
  }

  AdminEmpty empty() {
    return const AdminEmpty();
  }

  AdminResult result({required List<MicropubAccessKey> accessKeys}) {
    return AdminResult(
      accessKeys: accessKeys,
    );
  }
}

/// @nodoc
const $AdminState = _$AdminStateTearOff();

/// @nodoc
mixin _$AdminState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminStateCopyWith<$Res> {
  factory $AdminStateCopyWith(
          AdminState value, $Res Function(AdminState) then) =
      _$AdminStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminStateCopyWithImpl<$Res> implements $AdminStateCopyWith<$Res> {
  _$AdminStateCopyWithImpl(this._value, this._then);

  final AdminState _value;
  // ignore: unused_field
  final $Res Function(AdminState) _then;
}

/// @nodoc
abstract class $AdminStateNotAuthorizedCopyWith<$Res> {
  factory $AdminStateNotAuthorizedCopyWith(AdminStateNotAuthorized value,
          $Res Function(AdminStateNotAuthorized) then) =
      _$AdminStateNotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminStateNotAuthorizedCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res>
    implements $AdminStateNotAuthorizedCopyWith<$Res> {
  _$AdminStateNotAuthorizedCopyWithImpl(AdminStateNotAuthorized _value,
      $Res Function(AdminStateNotAuthorized) _then)
      : super(_value, (v) => _then(v as AdminStateNotAuthorized));

  @override
  AdminStateNotAuthorized get _value => super._value as AdminStateNotAuthorized;
}

/// @nodoc

class _$AdminStateNotAuthorized implements AdminStateNotAuthorized {
  const _$AdminStateNotAuthorized();

  @override
  String toString() {
    return 'AdminState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdminStateNotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class AdminStateNotAuthorized implements AdminState {
  const factory AdminStateNotAuthorized() = _$AdminStateNotAuthorized;
}

/// @nodoc
abstract class $AdminStateNotLoadedCopyWith<$Res> {
  factory $AdminStateNotLoadedCopyWith(
          AdminStateNotLoaded value, $Res Function(AdminStateNotLoaded) then) =
      _$AdminStateNotLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminStateNotLoadedCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res>
    implements $AdminStateNotLoadedCopyWith<$Res> {
  _$AdminStateNotLoadedCopyWithImpl(
      AdminStateNotLoaded _value, $Res Function(AdminStateNotLoaded) _then)
      : super(_value, (v) => _then(v as AdminStateNotLoaded));

  @override
  AdminStateNotLoaded get _value => super._value as AdminStateNotLoaded;
}

/// @nodoc

class _$AdminStateNotLoaded implements AdminStateNotLoaded {
  const _$AdminStateNotLoaded();

  @override
  String toString() {
    return 'AdminState.notLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdminStateNotLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) {
    return notLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) {
    return notLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) {
    return notLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) {
    return notLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) {
    if (notLoaded != null) {
      return notLoaded(this);
    }
    return orElse();
  }
}

abstract class AdminStateNotLoaded implements AdminState {
  const factory AdminStateNotLoaded() = _$AdminStateNotLoaded;
}

/// @nodoc
abstract class $AdminStateLoadingCopyWith<$Res> {
  factory $AdminStateLoadingCopyWith(
          AdminStateLoading value, $Res Function(AdminStateLoading) then) =
      _$AdminStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminStateLoadingCopyWithImpl<$Res>
    extends _$AdminStateCopyWithImpl<$Res>
    implements $AdminStateLoadingCopyWith<$Res> {
  _$AdminStateLoadingCopyWithImpl(
      AdminStateLoading _value, $Res Function(AdminStateLoading) _then)
      : super(_value, (v) => _then(v as AdminStateLoading));

  @override
  AdminStateLoading get _value => super._value as AdminStateLoading;
}

/// @nodoc

class _$AdminStateLoading implements AdminStateLoading {
  const _$AdminStateLoading();

  @override
  String toString() {
    return 'AdminState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdminStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdminStateLoading implements AdminState {
  const factory AdminStateLoading() = _$AdminStateLoading;
}

/// @nodoc
abstract class $AdminFailedCopyWith<$Res> {
  factory $AdminFailedCopyWith(
          AdminFailed value, $Res Function(AdminFailed) then) =
      _$AdminFailedCopyWithImpl<$Res>;
  $Res call({dynamic error, StackTrace? stackTrace});
}

/// @nodoc
class _$AdminFailedCopyWithImpl<$Res> extends _$AdminStateCopyWithImpl<$Res>
    implements $AdminFailedCopyWith<$Res> {
  _$AdminFailedCopyWithImpl(
      AdminFailed _value, $Res Function(AdminFailed) _then)
      : super(_value, (v) => _then(v as AdminFailed));

  @override
  AdminFailed get _value => super._value as AdminFailed;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AdminFailed(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$AdminFailed implements AdminFailed {
  const _$AdminFailed({required this.error, required this.stackTrace});

  @override
  final dynamic error;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'AdminState.failed(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminFailed &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $AdminFailedCopyWith<AdminFailed> get copyWith =>
      _$AdminFailedCopyWithImpl<AdminFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) {
    return failed(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) {
    return failed?.call(error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class AdminFailed implements AdminState {
  const factory AdminFailed(
      {required dynamic error,
      required StackTrace? stackTrace}) = _$AdminFailed;

  dynamic get error;
  StackTrace? get stackTrace;
  @JsonKey(ignore: true)
  $AdminFailedCopyWith<AdminFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminEmptyCopyWith<$Res> {
  factory $AdminEmptyCopyWith(
          AdminEmpty value, $Res Function(AdminEmpty) then) =
      _$AdminEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdminEmptyCopyWithImpl<$Res> extends _$AdminStateCopyWithImpl<$Res>
    implements $AdminEmptyCopyWith<$Res> {
  _$AdminEmptyCopyWithImpl(AdminEmpty _value, $Res Function(AdminEmpty) _then)
      : super(_value, (v) => _then(v as AdminEmpty));

  @override
  AdminEmpty get _value => super._value as AdminEmpty;
}

/// @nodoc

class _$AdminEmpty implements AdminEmpty {
  const _$AdminEmpty();

  @override
  String toString() {
    return 'AdminState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AdminEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class AdminEmpty implements AdminState {
  const factory AdminEmpty() = _$AdminEmpty;
}

/// @nodoc
abstract class $AdminResultCopyWith<$Res> {
  factory $AdminResultCopyWith(
          AdminResult value, $Res Function(AdminResult) then) =
      _$AdminResultCopyWithImpl<$Res>;
  $Res call({List<MicropubAccessKey> accessKeys});
}

/// @nodoc
class _$AdminResultCopyWithImpl<$Res> extends _$AdminStateCopyWithImpl<$Res>
    implements $AdminResultCopyWith<$Res> {
  _$AdminResultCopyWithImpl(
      AdminResult _value, $Res Function(AdminResult) _then)
      : super(_value, (v) => _then(v as AdminResult));

  @override
  AdminResult get _value => super._value as AdminResult;

  @override
  $Res call({
    Object? accessKeys = freezed,
  }) {
    return _then(AdminResult(
      accessKeys: accessKeys == freezed
          ? _value.accessKeys
          : accessKeys // ignore: cast_nullable_to_non_nullable
              as List<MicropubAccessKey>,
    ));
  }
}

/// @nodoc

class _$AdminResult implements AdminResult {
  const _$AdminResult({required this.accessKeys});

  @override
  final List<MicropubAccessKey> accessKeys;

  @override
  String toString() {
    return 'AdminState.result(accessKeys: $accessKeys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdminResult &&
            const DeepCollectionEquality()
                .equals(other.accessKeys, accessKeys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(accessKeys));

  @JsonKey(ignore: true)
  @override
  $AdminResultCopyWith<AdminResult> get copyWith =>
      _$AdminResultCopyWithImpl<AdminResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() notLoaded,
    required TResult Function() loading,
    required TResult Function(dynamic error, StackTrace? stackTrace) failed,
    required TResult Function() empty,
    required TResult Function(List<MicropubAccessKey> accessKeys) result,
  }) {
    return result(accessKeys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
  }) {
    return result?.call(accessKeys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? notLoaded,
    TResult Function()? loading,
    TResult Function(dynamic error, StackTrace? stackTrace)? failed,
    TResult Function()? empty,
    TResult Function(List<MicropubAccessKey> accessKeys)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(accessKeys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminStateNotAuthorized value) notAuthorized,
    required TResult Function(AdminStateNotLoaded value) notLoaded,
    required TResult Function(AdminStateLoading value) loading,
    required TResult Function(AdminFailed value) failed,
    required TResult Function(AdminEmpty value) empty,
    required TResult Function(AdminResult value) result,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminStateNotAuthorized value)? notAuthorized,
    TResult Function(AdminStateNotLoaded value)? notLoaded,
    TResult Function(AdminStateLoading value)? loading,
    TResult Function(AdminFailed value)? failed,
    TResult Function(AdminEmpty value)? empty,
    TResult Function(AdminResult value)? result,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class AdminResult implements AdminState {
  const factory AdminResult({required List<MicropubAccessKey> accessKeys}) =
      _$AdminResult;

  List<MicropubAccessKey> get accessKeys;
  @JsonKey(ignore: true)
  $AdminResultCopyWith<AdminResult> get copyWith =>
      throw _privateConstructorUsedError;
}
