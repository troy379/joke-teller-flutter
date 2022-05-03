// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_remote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JokeRemote _$JokeRemoteFromJson(Map<String, dynamic> json) => JokeRemote(
      id: json['id'] as int,
      setup: json['setup'] as String,
      punchline: json['punchline'] as String,
    );

Map<String, dynamic> _$JokeRemoteToJson(JokeRemote instance) =>
    <String, dynamic>{
      'id': instance.id,
      'setup': instance.setup,
      'punchline': instance.punchline,
    };
