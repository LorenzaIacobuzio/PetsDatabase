import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moor/moor.dart' show Insertable, Value, Expression;
import 'package:pets/repositories/pets_repository.dart';
import 'package:pets/utils/typedefs.dart';

part 'pets_objects.freezed.dart';
part 'pets_objects.g.dart';

@freezed
class Owner with _$Owner, Insertable<Owner> {
  const Owner._();

  const factory Owner(
    OwnerId id,
    String name,
    int age,
  ) = _Owner;

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return OwnersCompanion(id: Value(id), name: Value(name), age: Value(age))
        .toColumns(nullToAbsent);
  }
}

@freezed
class InnerPet with _$InnerPet {
  const factory InnerPet.cat() = Cat;

  const factory InnerPet.dog() = Dog;

  const factory InnerPet.snake(bool isVenomous) = Snake;

  factory InnerPet.fromJson(Map<String, dynamic> json) =>
      _$InnerPetFromJson(json);
}

@freezed
class Pet with _$Pet, Insertable<Pet> {
  const Pet._();

  const factory Pet(PetId id, OwnerId ownedBy, Gender gender, String name,
      int age, InnerPet innerPet) = _Pet;

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PetsCompanion(
            id: Value(id),
            ownedBy: Value(ownedBy),
            gender: Value(gender),
            name: Value(name),
            age: Value(age),
            innerPet: Value(innerPet))
        .toColumns(nullToAbsent);
  }
}

@JsonEnum(alwaysCreate: true)
enum Gender { male, female }

// ignore: constant_identifier_names
const GenderEnumMap = _$GenderEnumMap;
