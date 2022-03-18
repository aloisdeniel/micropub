import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:micropub/client.dart';

part 'state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const factory AppState.initializing({
    required MicropubApiClient client,
  }) = AppStateInitializing;
  const factory AppState.initializationFailed({
    required MicropubApiClient client,
    required dynamic error,
  }) = AppStateInitializationFailed;
  const factory AppState.initialized({
    required MicropubServerInfo info,
    required MicropubApiClient client,
  }) = AppStateInitialized;
  const factory AppState.notAuthenticated({
    required MicropubServerInfo info,
    required MicropubApiClient client,
  }) = AppStateNotAuthenticated;
  const factory AppState.authenticationFailed({
    required MicropubServerInfo info,
    required MicropubApiClient client,
  }) = AppStateNotAuthenticationFailed;
  const factory AppState.authenticating({
    required MicropubServerInfo info,
    required MicropubApiClient client,
  }) = AppStateAuthenticating;
  const factory AppState.authenticated({
    required MicropubMe me,
    required MicropubServerInfo info,
    required MicropubApiAuthenticatedClient client,
    required PackagesState packages,
    required AdminState admin,
    required PackageState package,
  }) = AppStateAuthenticated;
}

@Freezed()
class PackagesState with _$PackagesState {
  const factory PackagesState.notLoaded({
    required int page,
    required int pageSize,
    required String query,
  }) = PackagesNotLoaded;
  const factory PackagesState.loading({
    required int page,
    required int pageSize,
    required String query,
  }) = PackagesLoading;
  const factory PackagesState.failed({
    required int page,
    required int pageSize,
    required String query,
    required dynamic error,
    required StackTrace? stackTrace,
  }) = PackagesFailed;
  const factory PackagesState.empty({
    required int page,
    required int pageSize,
    required String query,
  }) = PackagesEmpty;
  const factory PackagesState.result({
    required int page,
    required int pageSize,
    required String query,
    required int totalPages,
    required MicropubQueryResult result,
  }) = PackagesResult;
}

@Freezed()
class PackageState with _$PackageState {
  const factory PackageState.notLoaded() = PackageStateNotLoaded;
  const factory PackageState.loading({
    required String packageName,
  }) = PackageStateLoading;
  const factory PackageState.failed({
    required String packageName,
    required dynamic error,
    required StackTrace? stackTrace,
  }) = PackageStateFailed;
  const factory PackageState.result({
    required String packageName,
    required MicropubPackageDetails result,
  }) = PackageStateResult;
}

@Freezed()
class AdminState with _$AdminState {
  const factory AdminState.notAuthorized() = AdminStateNotAuthorized;
  const factory AdminState.notLoaded() = AdminStateNotLoaded;
  const factory AdminState.loading() = AdminStateLoading;
  const factory AdminState.failed({
    required dynamic error,
    required StackTrace? stackTrace,
  }) = AdminFailed;
  const factory AdminState.empty() = AdminEmpty;
  const factory AdminState.result({
    required List<MicropubAccessKey> accessKeys,
  }) = AdminResult;
}
