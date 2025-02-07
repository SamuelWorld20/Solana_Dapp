import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solana_dapp/pages/home.dart';
import 'package:solana_dapp/pages/login.dart';
import 'package:solana_dapp/pages/setupPassword.dart';
import 'package:solana_dapp/pages/setupAccount.dart';
import 'package:solana_dapp/pages/generatePhrase.dart';
import 'package:solana_dapp/pages/inputPhrase.dart';

void main() => runApp(MyApp());

final GoRouter _router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: "/passwordSetup/:privateKey",
      builder: (context, state) => SetupPasswordScreen(
        privateKey: state.pathParameters["privatekey"],
      ),
    ),
    GoRoute(
      path: "/setup",
      builder: (context, state) => const SetupSceen(),
    ),
    GoRoute(
      path: "/generatePhrase",
      builder: (context, state) => const GeneratePhraseScreen(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/inputPhrase",
      builder: (context, state) => const InputPhraseScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark().copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[500],
          ),
        ),
        primaryColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.grey[450],
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
