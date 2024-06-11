import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entitiy.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';
import 'package:meta/meta.dart';

import '../../../core/usecases/usecase.dart';

class SearchPerson extends UseCase<List<PersonEntitiy>, SearchPersonParams> {
  final PersonRepository personRepository;
  SearchPerson(this.personRepository);

  @override
  Future<Either<Failure, List<PersonEntitiy>>> call(
      SearchPersonParams params) async {
    return await personRepository.searchPerson(params.query);
  }
}

class SearchPersonParams extends Equatable {
  final String query;
  const SearchPersonParams({required this.query});
  @override
  List<Object> get props => [query];
}
