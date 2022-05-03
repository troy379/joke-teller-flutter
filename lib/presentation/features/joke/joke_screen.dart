import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:joke_teller_flutter/presentation/common/adapters/exception_to_error_message_adapter.dart';
import 'package:joke_teller_flutter/presentation/common/colors/app_colors.dart';
import 'package:joke_teller_flutter/presentation/common/extensions/build_context_extensions.dart';
import 'package:joke_teller_flutter/presentation/common/ui/app_loading_overlay.dart';
import 'package:joke_teller_flutter/presentation/common/ui/app_slide_from_bottom_with_fade_switcher.dart';
import 'package:joke_teller_flutter/presentation/common/ui/app_try_again_error.dart';
import 'package:joke_teller_flutter/presentation/features/joke/bloc/joke_cubit.dart';
import 'package:joke_teller_flutter/presentation/features/joke/bloc/joke_state.dart';
import 'package:joke_teller_flutter/service_locator.dart';

class JokeScreen extends StatefulWidget {
  const JokeScreen({Key? key}) : super(key: key);

  @override
  State<JokeScreen> createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  late final _bloc = getIt<JokeCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JokeCubit, JokeState>(
      bloc: _bloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(context.strings.jokeScreenTitle),
          ),
          backgroundColor: AppColors.background,
          body: Stack(
            children: [
              if (state.loadingException != null) ...{
                AppSimpleTryAgainError(
                  message: ExceptionToErrorMessageAdapter.getMessage(context, state.loadingException!),
                  onTryAgain: _bloc.loadJoke,
                ),
              } else ...{
                Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          _JokeSetupText(
                            text: state.joke?.setup,
                            onPressed: () {
                              _bloc.showPunchline();
                              _bloc.loadNextJoke();
                            },
                          ),
                          const SizedBox(height: 24),
                          AppSlideFromBottomWithFadeSwitcher(
                            key: ValueKey(state.joke),
                            showFirst: !state.showPunchline,
                            firstChild: const SizedBox(width: double.infinity),
                            secondChild: _JokePunchlineText(text: state.joke?.punchline),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              },
              if (state.isLoading) ...{
                const AppLoadingOverlay(),
              }
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}

class _JokeSetupText extends StatelessWidget {
  final String? text;
  final VoidCallback onPressed;

  const _JokeSetupText({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _JokePunchlineText extends StatelessWidget {
  final String? text;

  const _JokePunchlineText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.text,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
