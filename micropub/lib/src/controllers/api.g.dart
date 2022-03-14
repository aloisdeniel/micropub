// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ApiControllerRouter(ApiController service) {
  final router = Router();
  router.add('GET', r'/me', service.me);
  router.add('POST', r'/admin/users', service.createAccessKey);
  router.add('DELETE', r'/admin/users/<key>', service.revokeAccessKey);
  router.add('GET', r'/packages/<name>', service.getVersions);
  router.add('GET', r'/packages/<name>/versions/<version>', service.getVersion);
  router.add('GET', r'/packages', service.getPackages);
  router.add('GET', r'/packages/versions/new', service.getUploadUrl);
  router.add('POST', r'/packages/versions/newUpload', service.upload);
  router.add(
      'GET', r'/packages/versions/newUploadFinish', service.uploadFinish);
  router.add('POST', r'/packages/<name>/uploaders', service.addUploader);
  router.add(
      'DELETE', r'/packages/<name>/uploaders/<email>', service.removeUploader);
  return router;
}
