import 'package:joke_teller_flutter/domain/models/joke.dart';

abstract class JokesRepository {
  Future<Joke> getRandomJoke();
}
