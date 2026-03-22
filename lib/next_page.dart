import 'package:flutter/material.dart';

import 'keyboard_visibility.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  static Future<void> navigateTo(BuildContext context) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => NextPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Next Page')),
      body: KeyboardVisibility(hasNextPageButton: false),
    );
  }
}
