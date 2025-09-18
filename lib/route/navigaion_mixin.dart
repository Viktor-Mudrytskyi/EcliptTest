import 'package:flutter/material.dart';

mixin NavigaionMixin {
  Future<T?> push<T>({required BuildContext context, required Widget page}) {
    return Navigator.of(
      context,
    ).push<T>(MaterialPageRoute(builder: (_) => page));
  }

  Future<T?> replaceAllWithKey<T>({
    required GlobalKey<NavigatorState> key,
    required Widget page,
    bool animate = true,
  }) async {
    final materialBuilder = MaterialPageRoute<T>(builder: (_) => page);
    final pageBuilder = PageRouteBuilder<T>(
      pageBuilder: (_, __, ___) => page,
      transitionDuration: Duration.zero,
      reverseTransitionDuration: Duration.zero,
    );
    final res = await key.currentState?.pushAndRemoveUntil<T>(
      animate ? materialBuilder : pageBuilder,
      (route) => false,
    );
    return res;
  }
}
