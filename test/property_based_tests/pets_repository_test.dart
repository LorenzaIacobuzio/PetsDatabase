import 'dart:io' as io;

import 'package:glados/glados.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:pets/repositories/pets_repository.dart';

import '../utils/pets_generators.dart';

void main() {
  group("Questions are inserted and retrieved correctly from the database", () {
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

    Glados(any.owner)
        .test("Any owner can be stored and retrieved in the database",
            (generatedOwner) async {
      await db.insertOwner(generatedOwner);
      var retrievedOwner = await db.getOwner(generatedOwner.id);
      expect(retrievedOwner, equals(generatedOwner));
    });

    Glados(any.ownerWithCats)
        .test("Any owner with cats can be stored and retrieved in the database",
            (generatedOwnerWithCats) async {
      var generatedOwner = generatedOwnerWithCats.value1;
      var generatedCats = generatedOwnerWithCats.value2;

      var generatedCatsMap = {for (var cat in generatedCats) cat.id: cat};

      await db.insertOwnerWithPets(generatedOwner, generatedCats);

      var retrievedOwnerWithPets =
          await db.getOwnerAndTheirPets(generatedOwner.id);

      expect(retrievedOwnerWithPets.value1, equals(generatedOwner));
      for (var retrievedCat in retrievedOwnerWithPets.value2) {
        expect(retrievedCat, equals(generatedCatsMap[retrievedCat.id]));
      }
    });

    Glados(any.ownerWithPets)
         .test("Any owner with pets can be stored and retrieved in the database",
             (generatedOwnerWithPets) async {
      var generatedOwner = generatedOwnerWithPets.value1;
      var generatedPets = generatedOwnerWithPets.value2;

      var generatedPetsMap = {for (var pet in generatedPets) pet.id: pet};

      await db.insertOwnerWithPets(generatedOwner, generatedPets);

      var retrievedOwnerWithPets =
          await db.getOwnerAndTheirPets(generatedOwner.id);

      expect(retrievedOwnerWithPets.value1, equals(generatedOwner));
      for (var retrievedPet in retrievedOwnerWithPets.value2) {
        expect(retrievedPet, equals(generatedPetsMap[retrievedPet.id]));
       }
     });
  });
}
