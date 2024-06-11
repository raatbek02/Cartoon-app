import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/core/error/failure.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entitiy.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';
import 'package:meta/meta.dart';

class GetAllPersons extends UseCase<List<PersonEntitiy>, PagePersonParams> {
  final PersonRepository personRepository;
  GetAllPersons(this.personRepository);

  @override
  Future<Either<Failure, List<PersonEntitiy>>> call(
      PagePersonParams params) async {
    return await personRepository.getAllPersons(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;
  PagePersonParams({required this.page});

  @override
  List<Object> get props => [page];
}
