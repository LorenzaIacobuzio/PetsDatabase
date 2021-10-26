import 'package:dartz/dartz.dart';
import 'package:moor/moor.dart';
import 'package:moor/ffi.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:pets/pets_objects/pets_objects.dart';
import 'package:pets/utils/typedefs.dart';
import 'dart:io' as io;

import 'package:pets/pets_objects/type_converters.dart';

part 'pets_repository.g.dart';

@UseRowClass(Owner)
class Owners extends Table {
  TextColumn get id => text()();

  TextColumn get name => text()();

  IntColumn get age => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

@UseRowClass(Pet)
class Pets extends Table {
  TextColumn get id => text()();

  TextColumn get ownedBy => text()();

  TextColumn get gender => text().map(GenderConverter())();

  TextColumn get name => text()();

  IntColumn get age => integer()();

  TextColumn get innerPet => text().map(InnerPetConverter())();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get customConstraints =>
      ['FOREIGN KEY(owned_by) REFERENCES owners(id)'];
}

LazyDatabase _openConnection(String database) {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = io.File(p.join(dbFolder.path, database));

    return VmDatabase(file, setup: (rawDb) {
      rawDb.execute("PRAGMA foreign_keys = ON;");
    });
  });
}

@UseMoor(tables: [Owners, Pets])
class PetsDatabase extends _$PetsDatabase {
  PetsDatabase(String database) : super(_openConnection(database));

  @override
  int get schemaVersion => 1;

  Future<int> insertOwner(Owner owner) => into(owners).insert(owner);

  Future<Owner> getOwner(OwnerId ownerId) =>
      (select(owners)..where((owner) => owner.id.equals(ownerId))).getSingle();

  Future<Pet> getPet(PetId petId) =>
      (select(pets)..where((pet) => pet.id.equals(petId))).getSingle();

  Future<void> insertPet(Pet pet) => into(pets).insert(pet);

  Future<List<Pet>> getPets(List<PetId> petIds) =>
      (select(pets)..where((q) => q.id.isIn(petIds))).get();

  Future<void> insertOwnerWithPets(Owner owner, List<Pet> pets) =>
      batch((batch) {
        batch.insert(owners, owner);
        batch.insertAll(this.pets, pets);
      });

  Future<Tuple2<Owner, List<Pet>>> getOwnerAndTheirPets(OwnerId ownerId) {
    var owner =
        (select(owners)..where((q) => q.id.equals(ownerId))).getSingle();
    var pets =
        (select(this.pets)..where((q) => q.ownedBy.equals(ownerId))).get();
    return owner.then((q) => pets.then((qs) => Tuple2(q, qs)));
  }
}
