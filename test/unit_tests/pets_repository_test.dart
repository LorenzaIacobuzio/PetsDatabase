import 'dart:io' as io;
import 'dart:math';

import 'package:glados/glados.dart';
import 'package:moor/ffi.dart';

import 'package:test/test.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:pets/pets_objects/pets_objects.dart';
import 'package:pets/repositories/pets_repository.dart';
import 'package:uuid/uuid.dart';

void main() {
  group("Simple pets repository tests", () {
    late PetsDatabase db;
    String dbPath = any.letters(Random(), 10).value + ".db";

    setUpAll(() {
      db = PetsDatabase(dbPath);
    });

    tearDownAll(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      await db.close();
      final file = io.File(p.join(dbFolder.path, dbPath));
      await file.delete();
    });

    test(
        "An owner and their single cat can be inserted and retrieved correctly",
        () async {
      var owner = Owner(Uuid().v4(), "Jon", 39);
      var pet = Pet(
          Uuid().v4(), owner.id, Gender.male, "Garfield", 9, InnerPet.cat());

      await db.insertOwner(owner);
      await db.insertPet(pet);
      var retrievedOwner = await db.getOwner(owner.id);
      var retrievedPet = await db.getPet(pet.id);
      expect(retrievedOwner, equals(owner));
      expect(retrievedPet, equals(pet));
    });

    /// To test two owners with same ID cannot be entered in database
    /// A unique contraint exception must be triggered and catched
    /// If this happens, the test passes, otherwise it fails because an exception hasn't been raised

    test("We cannot insert two owners with the same id", () async {
      var owner1Id = Uuid().v4();
      var owner1 = Owner(owner1Id, "Jon", 39);
      var owner2 = Owner(owner1Id, "Jon", 39);
      await db.insertOwner(owner1);
      try {
         await db.insertOwner(owner2);
         fail("Unique constraint exception expected");
      } catch (e) {
            expect(e.toString().contains('UNIQUE'), true);
      }
    });

    /// To test pet with invalid owner cannot be entered in database
    /// A pet with a random owner ID is inserted
    /// Since the corresponding owner hasn't been inserted in the db as well
    /// A foreign key constraint exception is raised
    /// The exception is catched and the test passes
    /// Otherwise it fails because an exception hasn't been raised

    test("We cannot insert a pet without a valid owner", () async {
      var pet = Pet(Uuid().v4(), Uuid().v4(), Gender.male, "Garfield", 9, InnerPet.cat());
      try {
         await db.insertPet(pet);
         fail("Foreign key constraint exception expected");
      } catch (e) {
            expect(e.toString().contains('FOREIGN'), true);
            expect(e, isA<SqliteException>());
      }
    });
  });
}
