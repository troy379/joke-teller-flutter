import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joke_teller_flutter/presentation/common/colors/app_colors.dart';
import 'package:joke_teller_flutter/presentation/features/joke/joke_screen.dart';

class JokeTellerApp extends StatelessWidget {
  const JokeTellerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Joke Teller",
      localizationsDelegates: const [AppLocalizations.delegate],
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primary,
          secondary: AppColors.accent,
        ),
      ),
      home: const JokeScreen(),
    );
  }
}
