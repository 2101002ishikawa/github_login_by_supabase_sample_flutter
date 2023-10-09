import 'package:flutter/material.dart';

import 'main.dart';

class LoginAfterPage extends StatefulWidget {
  const LoginAfterPage({super.key});

  @override
  State<LoginAfterPage> createState() => _LoginAfterPageState();
}

class _LoginAfterPageState extends State<LoginAfterPage> {
  @override
  Widget build(BuildContext context) {
    final user = supabase.auth.currentSession!.user;

    return Scaffold(
      appBar: AppBar(title: const Text('Login After')),
      body: ListView(
        children: [
          Text('user.id: ${user.id}'),
          Text('user.email: ${user.email}'),
          Expanded(child: Text('user: ${user.userMetadata}')),
        ],
      ),
    );
  }
}
