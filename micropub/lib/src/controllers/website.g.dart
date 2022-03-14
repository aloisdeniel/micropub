// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'website.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$WebsiteControllerRouter(WebsiteController service) {
  final router = Router();
  router.add('GET', r'/', service.index);
  router.add('GET', r'/index.html', service.index);
  router.add('GET', r'/admin', service.admin);
  return router;
}
