// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeState {
  Joke? get joke => throw _privateConstructorUsedError;
  bool get showPunchline => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingDelayed => throw _privateConstructorUsedError;
  Exception? get loadingException => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeStateCopyWith<JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeStateCopyWith<$Res> {
  factory $JokeStateCopyWith(JokeState value, $Res Function(JokeState) then) =
      _$JokeStateCopyWithImpl<$Res>;
  $Res call(
      {Joke? joke,
      bool showPunchline,
      bool isLoading,
      bool isLoadingDelayed,
      Exception? loadingException});
}

/// @nodoc
class _$JokeStateCopyWithImpl<$Res> implements $JokeStateCopyWith<$Res> {
  _$JokeStateCopyWithImpl(this._value, this._then);

  final JokeState _value;
  // ignore: unused_field
  final $Res Function(JokeState) _then;

  @override
  $Res call({
    Object? joke = freezed,
    Object? showPunchline = freezed,
    Object? isLoading = freezed,
    Object? isLoadingDelayed = freezed,
    Object? loadingException = freezed,
  }) {
    return _then(_value.copyWith(
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke?,
      showPunchline: showPunchline == freezed
          ? _value.showPunchline
          : showPunchline // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDelayed: isLoadingDelayed == freezed
          ? _value.isLoadingDelayed
          : isLoadingDelayed // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingException: loadingException == freezed
          ? _value.loadingException
          : loadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$JokeStateCopyWith<$Res> implements $JokeStateCopyWith<$Res> {
  factory _$JokeStateCopyWith(
          _JokeState value, $Res Function(_JokeState) then) =
      __$JokeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Joke? joke,
      bool showPunchline,
      bool isLoading,
      bool isLoadingDelayed,
      Exception? loadingException});
}

/// @nodoc
class __$JokeStateCopyWithImpl<$Res> extends _$JokeStateCopyWithImpl<$Res>
    implements _$JokeStateCopyWith<$Res> {
  __$JokeStateCopyWithImpl(_JokeState _value, $Res Function(_JokeState) _then)
      : super(_value, (v) => _then(v as _JokeState));

  @override
  _JokeState get _value => super._value as _JokeState;

  @override
  $Res call({
    Object? joke = freezed,
    Object? showPunchline = freezed,
    Object? isLoading = freezed,
    Object? isLoadingDelayed = freezed,
    Object? loadingException = freezed,
  }) {
    return _then(_JokeState(
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke?,
      showPunchline: showPunchline == freezed
          ? _value.showPunchline
          : showPunchline // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingDelayed: isLoadingDelayed == freezed
          ? _value.isLoadingDelayed
          : isLoadingDelayed // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingException: loadingException == freezed
          ? _value.loadingException
          : loadingException // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_JokeState implements _JokeState {
  const _$_JokeState(
      {required this.joke,
      required this.showPunchline,
      required this.isLoading,
      required this.isLoadingDelayed,
      required this.loadingException});

  @override
  final Joke? joke;
  @override
  final bool showPunchline;
  @override
  final bool isLoading;
  @override
  final bool isLoadingDelayed;
  @override
  final Exception? loadingException;

  @override
  String toString() {
    return 'JokeState(joke: $joke, showPunchline: $showPunchline, isLoading: $isLoading, isLoadingDelayed: $isLoadingDelayed, loadingException: $loadingException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JokeState &&
            const DeepCollectionEquality().equals(other.joke, joke) &&
            const DeepCollectionEquality()
                .equals(other.showPunchline, showPunchline) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingDelayed, isLoadingDelayed) &&
            const DeepCollectionEquality()
                .equals(other.loadingException, loadingException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(joke),
      const DeepCollectionEquality().hash(showPunchline),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isLoadingDelayed),
      const DeepCollectionEquality().hash(loadingException));

  @JsonKey(ignore: true)
  @override
  _$JokeStateCopyWith<_JokeState> get copyWith =>
      __$JokeStateCopyWithImpl<_JokeState>(this, _$identity);
}

abstract class _JokeState implements JokeState {
  const factory _JokeState(
      {required final Joke? joke,
      required final bool showPunchline,
      required final bool isLoading,
      required final bool isLoadingDelayed,
      required final Exception? loadingException}) = _$_JokeState;

  @override
  Joke? get joke => throw _privateConstructorUsedError;
  @override
  bool get showPunchline => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadingDelayed => throw _privateConstructorUsedError;
  @override
  Exception? get loadingException => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$JokeStateCopyWith<_JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
