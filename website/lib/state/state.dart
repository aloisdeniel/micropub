import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:website/services/api.dart';
import 'package:website/services/model.dart';

part 'state.freezed.dart';

@Freezed()
class AppState with _$AppState {
  const factory AppState.initializing() = _AppStateInitializing;
  const factory AppState.notAuthenticated() = _AppStateNotAuthenticated;
  const factory AppState.authenticationFailed() =
      _AppStateNotAuthenticationFailed;
  const factory AppState.authenticating() = _AppStateAuthenticating;
  const factory AppState.authenticated({
    required MicropubMe me,
    required ApiClient client,
    required PackagesState packages,
  }) = _AppStateAuthenticated;
}

@Freezed()
class PackagesState with _$PackagesState {
  const factory PackagesState.notLoaded({
    required int page,
    required int pageSize,
  }) = _PackagesNotLoaded;
  const factory PackagesState.loading({
    required int page,
    required int pageSize,
  }) = _PackagesLoading;
  const factory PackagesState.failed({
    required int page,
    required int pageSize,
    required dynamic error,
  }) = _PackagesFailed;
  const factory PackagesState.empty({
    required int page,
    required int pageSize,
  }) = _PackagesEmpty;
  const factory PackagesState.result({
    required int page,
    required int pageSize,
    required int totalPages,
    required MicropubQueryResult result,
  }) = _PackagesResult;
}
