# Pets

Hello, and welcome to the Pets case. 

Pets is an database that stores information about pet owners and their pets, and at the current moment, there is not much more to it than that.

However, the maintainer mostly focused on building the infrastructure, and thus neglected to write sufficient tests for this small project.

Your task is to implement the rest of these missing tests, so the maintainer can be (more) certain that the written software actually works as intended.

## Background

The Pets codebase consists of a small set of Dart classes that can be inserted and retrieved from their corresponding tables. However, the underlying database is based on SQLite.

SQLite supports limited number of data types, and it has therefore been necessary to write a couple of type converters that ensures that the various Dart classes are converted to SQL types, and back again.

Converters such as these always add risk to the data's integrity, and as both Owners and Pets comes with all sorts of names, ages and animal types, the maintainer has decided to apply _property-based testing_ in the project.

Contrary to standard unit testing, where the developer must think up edge cases by themselves for their tests, property-based testing lets the programmer define _generators_ that covers the scope of their problem domain.
These generators then create hundreds of unique test cases for use in verifying that their software indeed does work as intended.
If the generators are defined wisely, it is highly inprobable that they won't eventually find an edge case that breaks your software.


## Your task

There are three tasks that you're asked to complete in this case.
Specifically, there are two smaller tests missing in `test/unit_tests/pets_repository_test.dart`, and a larger, property-based, test missing in `test/property_based_tests/pets_repository_test.dart`.

The two missing unit tests should be considered as "warm-up" tasks, and the missing property-based test the main task.

The missing unit tests should 

1) verify that we cannot insert two owners with the same id into our database, and   
2) verify that we cannot insert ownerless pets into the database.

The existing property-based tests verify that we, for generated pet owners, and a list of generated cats, can 

**a) insert and retrieve any generated owner correctly,** and   
**b) insert and retrieve any generated owner and all of their cats correctly**

This leads us to third and final task on the list, namely 

**3) verify that we can insert a generated owner and all of their generated pets correctly**
   
The library `test/utils/pets_generators.dart` already contains some of the necessary generators for the task, but you will need to implement the remaining generator stubs to be able to complete this task.

## Hints

* It should not be necessary to write code in any other files than the ones already mention.
* When in doubt, make sure to look through the existing source code. You should also checkout the underlying testing source code in `package:glados/glados.dart` for inspiration. 
* You are not expected to finish the assignment in one sitting. If you get stuck, take a break and save the task for later. Most good ideas comes when you're away from the computer.