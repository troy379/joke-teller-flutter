import 'package:joke_teller_flutter/domain/models/joke.dart';
import 'package:json_annotation/json_annotation.dart';

part 'joke_remote.g.dart';

@JsonSerializable()
class JokeRemote {
  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "setup")
  final String setup;

  @JsonKey(name: "punchline")
  final String punchline;

  const JokeRemote({
    required this.id,
    required this.setup,
    required this.punchline,
  });

  factory JokeRemote.fromJson(Map<String, dynamic> json) => _$JokeRemoteFromJson(json);

  Joke toDomain() {
    return Joke(
      id: id.toString(),
      setup: setup,
      punchline: punchline,
    );
  }
}
