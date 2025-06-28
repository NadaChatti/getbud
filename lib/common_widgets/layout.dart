import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageLayout extends StatelessWidget {
  final Widget child;
  final FloatingActionButton? floatingActionButton;
  final String? title;
  final bool withBackButton;
  const PageLayout({
    super.key,
    required this.child,
    this.title,
    this.floatingActionButton,
    this.withBackButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
          tooltip: 'Back',
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title ?? "GetBud",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      floatingActionButton: floatingActionButton,
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(16.0), child: child),
      ),
    );
  }
}
