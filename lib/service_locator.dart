import 'package:get_it/get_it.dart';
import 'package:joke_teller_flutter/data/network/jokes_api_dio_client.dart';
import 'package:joke_teller_flutter/data/repositories/jokes_repository_impl.dart';
import 'package:joke_teller_flutter/domain/repositories/jokes_repository.dart';
import 'package:joke_teller_flutter/domain/use_cases/get_random_joke_use_case.dart';
import 'package:joke_teller_flutter/presentation/features/joke/bloc/joke_cubit.dart';

final getIt = GetIt.instance;

class AppServiceLocator {
  /// Initializes all dependencies declared inside the [AppServiceLocator].
  /// Should only be called before the [runApp] method
  static Future<void> initializeDependencies() async {
    await _initDioClients();
    await _initRepositories();
    await _initUseCases();
    await _initBlocs();
  }

  static Future<void> _initDioClients() async {
    getIt.registerLazySingleton<JokesApiDioClient>(
      () => JokesApiDioClient.create(),
    );
  }

  static Future<void> _initRepositories() async {
    getIt.registerFactory<JokesRepository>(
      () {
        return JokesRepositoryImpl(
          dioClient: getIt<JokesApiDioClient>(),
        );
      },
    );
  }

  static Future<void> _initUseCases() async {
    getIt.registerFactory<GetRandomJokeUseCase>(
      () {
        return GetRandomJokeUseCase(
          jokesRepository: getIt<JokesRepository>(),
        );
      },
    );
  }

  static Future<void> _initBlocs() async {
    getIt.registerFactory<JokeCubit>(
      () {
        return JokeCubit(
          getRandomJokeUseCase: getIt<GetRandomJokeUseCase>(),
        );
      },
    );
  }
}
