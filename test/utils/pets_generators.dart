import 'package:dartz/dartz.dart';
import 'package:glados/glados.dart';
import 'package:pets/pets_objects/pets_objects.dart';
import 'package:uuid/uuid.dart';

import 'package:pets/utils/typedefs.dart';

extension AnyId on Any {
  Generator<String> get _id =>
      simple(generate: (_, __) => Uuid().v4(), shrink: (_) => []);

  Generator<PetId> get petId => _id;

  Generator<OwnerId> get ownerId => _id;
}

extension AnyGender on Any {
  Generator<Gender> get gender => choose(Gender.values);
}

extension AnyNameAndGender on Any {
  Generator<Tuple2<String, Gender>> get catNameAndGender =>
      any.gender.bind((someGender) {
        var nameGenerator =
            someGender == Gender.male ? any.maleCatName : any.femaleCatName;
        return nameGenerator.map((someName) => Tuple2(someName, someGender));
      });
}

extension AnyName on Any {
  Generator<String> get ownerName =>
      choose(["Jens", "Sasszcha", "Anne", "Frede", "Mateo", "Camila"]);

  Generator<String> get maleCatName =>
      choose(["Daffy", "Conrad", "Garfield", "Mis"]);

  Generator<String> get femaleCatName =>
      choose(["Kitty", "Cathy", "Abby", "Siri"]);
}

extension AnyOwner on Any {
  Generator<Owner> get owner =>
      combine3(any.ownerId, any.ownerName, any.intInRange(18, 80), $Owner);

  Generator<Tuple2<Owner, List<Pet>>> get ownerWithCats =>
      any.owner.bind((owner) => any
          .listWithLengthInRange(3, 10, any.cat(owner.id))
          .map((cats) => Tuple2(owner, cats)));

  Generator<Tuple2<Owner, List<Pet>>> get ownerWithPets => 
      any.owner.bind((owner) => any
          .listWithLengthInRange(3, 10, any.pet(owner.id))
          .map((pets) => Tuple2(owner, pets)));
}

extension AnyPet on Any {
  Generator<Pet> cat(OwnerId ownedBy) => combine3(
      any.petId,
      any.intInRange(0, 20),
      any.catNameAndGender,
      (PetId petId, int age, Tuple2<String, Gender> nameAndGender) => Pet(
          petId,
          ownedBy,
          nameAndGender.value2,
          nameAndGender.value1,
          age,
          InnerPet.cat()));

  Generator<Pet> dog(OwnerId ownedBy) => combine3(
      any.petId,
      any.intInRange(0, 20),
      any.catNameAndGender,
      (PetId petId, int age, Tuple2<String, Gender> nameAndGender) => Pet(
          petId,
          ownedBy,
          nameAndGender.value2,
          nameAndGender.value1,
          age,
          InnerPet.dog()));

  Generator<Pet> snake(OwnerId ownedBy) => combine3(
      any.petId,
      any.intInRange(0, 20),
      any.catNameAndGender,
      (PetId petId, int age, Tuple2<String, Gender> nameAndGender) => Pet(
          petId,
          ownedBy,
          nameAndGender.value2,
          nameAndGender.value1,
          age,
          InnerPet.snake(true)));

  Generator<Pet> pet(OwnerId ownedBy) => combine3(
      any.petId,
      any.intInRange(0, 20),
      any.catNameAndGender,
      (PetId petId, int age, Tuple2<String, Gender> nameAndGender) => Pet(
          petId,
          ownedBy,
          nameAndGender.value2,
          nameAndGender.value1,
          age,
          InnerPet.cat())); /// tried to find a generic Pet.Pet to insert here so that all kinds of pets could be tested, but couldn't find the right syntax/function (also, not sure there is one. Maybe what I did was enough already)
}
