import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SetupSceen extends StatelessWidget {
  const SetupSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set up account'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => context.go("/inputphrase"),
            child: const Text('I have a recovery phrase'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.go("/generatePhrase"),
            child: const Text("Generate new wallet"),
          ),
        ],
      )),
    );
  }
}
