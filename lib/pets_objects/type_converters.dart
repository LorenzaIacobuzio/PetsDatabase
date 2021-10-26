import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moor/moor.dart';
import 'package:pets/pets_objects/pets_objects.dart';

class InnerPetConverter extends TypeConverter<InnerPet, String> {
  const InnerPetConverter();

  @override
  InnerPet mapToDart(String? fromDb) => fromDb == null
      ? throw UnimplementedError()
      : InnerPet.fromJson(json.decode(fromDb));

  @override
  String mapToSql(InnerPet? value) =>
      value == null ? throw UnimplementedError() : json.encode(value.toJson());
}

class GenderConverter extends TypeConverter<Gender, String> {
  const GenderConverter();

  @override
  Gender mapToDart(String? fromDb) => fromDb == null
      ? throw UnimplementedError()
      : $enumDecode(GenderEnumMap, fromDb);

  @override
  String mapToSql(Gender? value) =>
      value == null ? throw UnimplementedError() : GenderEnumMap[value]!;
}
