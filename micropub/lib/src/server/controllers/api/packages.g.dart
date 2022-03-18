// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'packages.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$PackagesApiControllerRouter(PackagesApiController service) {
  final router = Router();
  router.add('GET', r'/<name>', service.getVersions);
  router.add('GET', r'/<name>/details', service.getPackageDetails);
  router.add('GET', r'/<name>/versions/<version>', service.getVersion);
  router.add('GET', r'/', service.getPackages);
  router.add('GET', r'/versions/new', service.getUploadUrl);
  router.add('POST', r'/versions/newUpload', service.upload);
  router.add('GET', r'/versions/newUploadFinish', service.uploadFinish);
  router.add('POST', r'/<name>/uploaders', service.addUploader);
  router.add('DELETE', r'/<name>/uploaders/<email>', service.removeUploader);
  return router;
}
