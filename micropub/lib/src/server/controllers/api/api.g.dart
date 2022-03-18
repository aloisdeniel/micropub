// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ApiControllerRouter(ApiController service) {
  final router = Router();
  router.add('GET', r'/me', service.me);
  router.add('GET', r'/info', service.info);
  return router;
}
