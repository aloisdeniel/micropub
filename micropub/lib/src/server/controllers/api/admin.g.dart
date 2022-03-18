// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AdminApiControllerRouter(AdminApiController service) {
  final router = Router();
  router.add('GET', r'/users', service.getAccessKeys);
  router.add('POST', r'/users', service.createAccessKey);
  router.add('DELETE', r'/users/<key>', service.revokeAccessKey);
  return router;
}
