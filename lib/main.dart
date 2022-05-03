import 'package:flutter/material.dart';
import 'package:joke_teller_flutter/app.dart';
import 'package:joke_teller_flutter/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppServiceLocator.initializeDependencies();
  runApp(const JokeTellerApp());
}
