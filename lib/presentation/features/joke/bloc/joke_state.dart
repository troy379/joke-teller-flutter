import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joke_teller_flutter/domain/models/joke.dart';

part 'joke_state.freezed.dart';

@freezed
class JokeState with _$JokeState {
  const factory JokeState({
    required Joke? joke,
    required bool showPunchline,
    required bool isLoading,
    required bool isLoadingDelayed,
    required Exception? loadingException,
  }) = _JokeState;

  factory JokeState.initial() {
    return const JokeState(
      joke: null,
      showPunchline: false,
      isLoading: true,
      isLoadingDelayed: false,
      loadingException: null,
    );
  }
}
