import 'dart:convert';

import 'package:nosql_frontend/proto_gen/customstruct.pb.dart';
import 'package:nosql_frontend/proto_gen/node.pbgrpc.dart';
import 'package:nosql_frontend/providers/node_service/node_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'querying.g.dart';

@Riverpod(dependencies: [nodeService])
Stream<dynamic> queryStream(
  QueryStreamRef ref, {
  required String collectionId,
  required String property,
  required Operator operator,
  required String value,
}) async* {
  final NodeServiceClient nodeService = ref.watch(nodeServiceProvider);
  final propTypeResp = await nodeService.getPropertyType(
    GetCollectionPropertyTypeRequest(
      collectionId: collectionId,
      property: property,
    ),
  );
  final propertyType = propTypeResp.propertyType;

  final valueToSend = switch (propertyType) {
    CollectionPropertyType.INTEGER => () {
        if (operator == Operator.IN || operator == Operator.NOT_IN) {
          return CustomValue(
            listValue: CustomList(
              values: List<dynamic>.of(jsonDecode(value)).map(
                (e) => CustomValue(intValue: e),
              ),
            ),
          );
        }
        return CustomValue(intValue: int.parse(value));
      }(),
    CollectionPropertyType.STRING => () {
        if (operator == Operator.IN || operator == Operator.NOT_IN) {
          return CustomValue(
            listValue: CustomList(
              values: List<dynamic>.of(jsonDecode(value)).map(
                (e) => CustomValue(stringValue: e),
              ),
            ),
          );
        }
        return CustomValue(stringValue: value);
      }(),
    CollectionPropertyType.ARRAY => CustomValue(
        listValue: CustomList(
          values: List<dynamic>.of(jsonDecode(value)).map(
            (e) => CustomValue(stringValue: e),
          ),
        ),
      ),
    _ => null,
  };

  final stream = nodeService.queryDatabase(QueryDatabaseRequest(
    collectionId: collectionId,
    property: property,
    operator: operator,
    value: valueToSend,
  ));
  await for (final event in stream) {
    yield jsonDecode(event.data);
  }
  throw QueryEndNotification();
}

class QueryEndNotification {}
