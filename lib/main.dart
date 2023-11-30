import 'package:birds_nest/pages/hunters_log.dart';
import 'package:flutter/material.dart';

import 'package:birds_nest/pages/onboarding.dart';
import 'package:birds_nest/pages/login.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: "Bird's Nest",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const HuntersLog(),
  );
}
