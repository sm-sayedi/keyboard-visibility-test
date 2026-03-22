import 'package:flutter/material.dart';

import 'keyboard_visibility.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: KeyboardVisibility(),
    );
  }
}
