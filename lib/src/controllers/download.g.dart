// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$DownloadControllerRouter(DownloadController service) {
  final router = Router();
  router.add('GET', r'/<name>/versions/<version>.tar.gz', service.download);
  return router;
}
