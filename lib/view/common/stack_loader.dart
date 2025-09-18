import 'package:flutter/material.dart';

class StackLoader extends StatelessWidget {
  const StackLoader({super.key, required this.child, required this.isLoading});
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: 0.3),
              child: const Center(child: CircularProgressIndicator.adaptive()),
            ),
          ),
      ],
    );
  }
}
