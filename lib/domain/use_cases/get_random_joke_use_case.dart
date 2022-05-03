import 'package:joke_teller_flutter/domain/models/joke.dart';
import 'package:joke_teller_flutter/domain/repositories/jokes_repository.dart';

class GetRandomJokeUseCase {
  final JokesRepository _jokesRepository;

  const GetRandomJokeUseCase({
    required final JokesRepository jokesRepository,
  }) : _jokesRepository = jokesRepository;

  Future<Joke> execute() {
    return _jokesRepository.getRandomJoke();
  }
}
