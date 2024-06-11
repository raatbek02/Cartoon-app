import 'package:dartz/dartz.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entitiy.dart';

abstract class PersonRepository {
  Future<Either<Failure, List<PersonEntitiy>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonEntitiy>>>  searchPerson(String query);
}
