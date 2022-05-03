import 'package:joke_teller_flutter/data/models/joke_remote.dart';
import 'package:joke_teller_flutter/data/network/jokes_api_dio_client.dart';
import 'package:joke_teller_flutter/domain/exceptions/unexpected_exception.dart';
import 'package:joke_teller_flutter/domain/models/joke.dart';
import 'package:joke_teller_flutter/domain/repositories/jokes_repository.dart';

class JokesRepositoryImpl extends JokesRepository {
  final JokesApiDioClient _dioClient;

  JokesRepositoryImpl({required final JokesApiDioClient dioClient}) : _dioClient = dioClient;

  @override
  Future<Joke> getRandomJoke() async {
    try {
      final response = await _dioClient.dio.get(
        "jokes/random",
      );

      return JokeRemote.fromJson(response.data).toDomain();
    } catch (exception) {
      throw UnexpectedException(cause: exception);
    }
  }
}
