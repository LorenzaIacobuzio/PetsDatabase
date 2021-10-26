// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_repository.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class OwnersCompanion extends UpdateCompanion<Owner> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> age;
  const OwnersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.age = const Value.absent(),
  });
  OwnersCompanion.insert({
    required String id,
    required String name,
    required int age,
  })  : id = Value(id),
        name = Value(name),
        age = Value(age);
  static Insertable<Owner> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? age,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (age != null) 'age': age,
    });
  }

  OwnersCompanion copyWith(
      {Value<String>? id, Value<String>? name, Value<int>? age}) {
    return OwnersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OwnersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age')
          ..write(')'))
        .toString();
  }
}

class $OwnersTable extends Owners with TableInfo<$OwnersTable, Owner> {
  final GeneratedDatabase _db;
  final String? _alias;
  $OwnersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _ageMeta = const VerificationMeta('age');
  late final GeneratedColumn<int?> age = GeneratedColumn<int?>(
      'age', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, age];
  @override
  String get aliasedName => _alias ?? 'owners';
  @override
  String get actualTableName => 'owners';
  @override
  VerificationContext validateIntegrity(Insertable<Owner> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Owner map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Owner(
      const StringType().mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      const IntType().mapFromDatabaseResponse(data['${effectivePrefix}age'])!,
    );
  }

  @override
  $OwnersTable createAlias(String alias) {
    return $OwnersTable(_db, alias);
  }
}

class PetsCompanion extends UpdateCompanion<Pet> {
  final Value<String> id;
  final Value<String> ownedBy;
  final Value<Gender> gender;
  final Value<String> name;
  final Value<int> age;
  final Value<InnerPet> innerPet;
  const PetsCompanion({
    this.id = const Value.absent(),
    this.ownedBy = const Value.absent(),
    this.gender = const Value.absent(),
    this.name = const Value.absent(),
    this.age = const Value.absent(),
    this.innerPet = const Value.absent(),
  });
  PetsCompanion.insert({
    required String id,
    required String ownedBy,
    required Gender gender,
    required String name,
    required int age,
    required InnerPet innerPet,
  })  : id = Value(id),
        ownedBy = Value(ownedBy),
        gender = Value(gender),
        name = Value(name),
        age = Value(age),
        innerPet = Value(innerPet);
  static Insertable<Pet> custom({
    Expression<String>? id,
    Expression<String>? ownedBy,
    Expression<Gender>? gender,
    Expression<String>? name,
    Expression<int>? age,
    Expression<InnerPet>? innerPet,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (ownedBy != null) 'owned_by': ownedBy,
      if (gender != null) 'gender': gender,
      if (name != null) 'name': name,
      if (age != null) 'age': age,
      if (innerPet != null) 'inner_pet': innerPet,
    });
  }

  PetsCompanion copyWith(
      {Value<String>? id,
      Value<String>? ownedBy,
      Value<Gender>? gender,
      Value<String>? name,
      Value<int>? age,
      Value<InnerPet>? innerPet}) {
    return PetsCompanion(
      id: id ?? this.id,
      ownedBy: ownedBy ?? this.ownedBy,
      gender: gender ?? this.gender,
      name: name ?? this.name,
      age: age ?? this.age,
      innerPet: innerPet ?? this.innerPet,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (ownedBy.present) {
      map['owned_by'] = Variable<String>(ownedBy.value);
    }
    if (gender.present) {
      final converter = $PetsTable.$converter0;
      map['gender'] = Variable<String>(converter.mapToSql(gender.value)!);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (innerPet.present) {
      final converter = $PetsTable.$converter1;
      map['inner_pet'] = Variable<String>(converter.mapToSql(innerPet.value)!);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PetsCompanion(')
          ..write('id: $id, ')
          ..write('ownedBy: $ownedBy, ')
          ..write('gender: $gender, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('innerPet: $innerPet')
          ..write(')'))
        .toString();
  }
}

class $PetsTable extends Pets with TableInfo<$PetsTable, Pet> {
  final GeneratedDatabase _db;
  final String? _alias;
  $PetsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _ownedByMeta = const VerificationMeta('ownedBy');
  late final GeneratedColumn<String?> ownedBy = GeneratedColumn<String?>(
      'owned_by', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _genderMeta = const VerificationMeta('gender');
  late final GeneratedColumnWithTypeConverter<Gender, String?> gender =
      GeneratedColumn<String?>('gender', aliasedName, false,
              typeName: 'TEXT', requiredDuringInsert: true)
          .withConverter<Gender>($PetsTable.$converter0);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _ageMeta = const VerificationMeta('age');
  late final GeneratedColumn<int?> age = GeneratedColumn<int?>(
      'age', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _innerPetMeta = const VerificationMeta('innerPet');
  late final GeneratedColumnWithTypeConverter<InnerPet, String?> innerPet =
      GeneratedColumn<String?>('inner_pet', aliasedName, false,
              typeName: 'TEXT', requiredDuringInsert: true)
          .withConverter<InnerPet>($PetsTable.$converter1);
  @override
  List<GeneratedColumn> get $columns =>
      [id, ownedBy, gender, name, age, innerPet];
  @override
  String get aliasedName => _alias ?? 'pets';
  @override
  String get actualTableName => 'pets';
  @override
  VerificationContext validateIntegrity(Insertable<Pet> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('owned_by')) {
      context.handle(_ownedByMeta,
          ownedBy.isAcceptableOrUnknown(data['owned_by']!, _ownedByMeta));
    } else if (isInserting) {
      context.missing(_ownedByMeta);
    }
    context.handle(_genderMeta, const VerificationResult.success());
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
          _ageMeta, age.isAcceptableOrUnknown(data['age']!, _ageMeta));
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    context.handle(_innerPetMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Pet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Pet(
      const StringType().mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}owned_by'])!,
      $PetsTable.$converter0.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}gender']))!,
      const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      const IntType().mapFromDatabaseResponse(data['${effectivePrefix}age'])!,
      $PetsTable.$converter1.mapToDart(const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}inner_pet']))!,
    );
  }

  @override
  $PetsTable createAlias(String alias) {
    return $PetsTable(_db, alias);
  }

  static TypeConverter<Gender, String> $converter0 = GenderConverter();
  static TypeConverter<InnerPet, String> $converter1 = InnerPetConverter();
}

abstract class _$PetsDatabase extends GeneratedDatabase {
  _$PetsDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $OwnersTable owners = $OwnersTable(this);
  late final $PetsTable pets = $PetsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [owners, pets];
}
