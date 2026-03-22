import 'dart:async';

import 'package:flutter/material.dart';

import 'next_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  final focusNode = FocusNode();
  String _visibilityMessage = 'Unknown keyboard visibility status ⚠️';

  void updateVisibilityMessage() {
    if (!mounted) return;
    setState(() {
      _visibilityMessage = View.of(context).keyboardVisible
          ? 'Keyboard is visible ✅'
          : 'Keyboard is not visible ❌';
    });
  }

  final colors = Colors.primaries;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    updateVisibilityMessage();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    updateVisibilityMessage();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Padding(
        padding: const .symmetric(horizontal: 16, vertical: 24),
        child: Column(
          spacing: 16,
          children: [
            Text(
              _visibilityMessage,
              style: TextStyle(fontSize: 16, fontWeight: .w500),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: .end,
                  spacing: 16,
                  children: [
                    TextButton(
                      onPressed: () => focusNode.unfocus(),
                      child: const Text('Unfocus'),
                    ),
                    TextField(
                      focusNode: focusNode,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Write something...',
                      ),
                    ),
                    ...List.generate(
                      20,
                      (i) => Container(
                        height: 100,
                        color: colors[i % colors.length].shade100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => unawaited(NextPage.navigateTo(context)),
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
