import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_teller_flutter/domain/use_cases/get_random_joke_use_case.dart';
import 'package:joke_teller_flutter/presentation/features/joke/bloc/joke_state.dart';

class JokeCubit extends Cubit<JokeState> {
  final GetRandomJokeUseCase _getRandomJokeUseCase;

  JokeCubit({
    required GetRandomJokeUseCase getRandomJokeUseCase,
  })  : _getRandomJokeUseCase = getRandomJokeUseCase,
        super(JokeState.initial()) {
    loadJoke();
  }

  void loadJoke() async {
    emit(state.copyWith(isLoading: true, isLoadingDelayed: false, loadingException: null));
    try {
      final joke = await _getRandomJokeUseCase.execute();

      emit(
        state.copyWith(
          joke: joke,
          isLoading: false,
          showPunchline: false,
        ),
      );
    } on Exception catch (exception) {
      emit(state.copyWith(isLoading: false, loadingException: exception));
    }
  }

  void loadNextJoke() {
    if (!state.isLoadingDelayed) {
      emit(state.copyWith(isLoadingDelayed: true));
      Future.delayed(const Duration(seconds: 3), loadJoke);
    }
  }

  void showPunchline() {
    emit(state.copyWith(showPunchline: true));
  }
}
