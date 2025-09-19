import 'package:flutter/material.dart';

extension ContextUtils on BuildContext {
  void removeFocus() {
    final FocusScopeNode currentScope = FocusScope.of(this);
    if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  EdgeInsets get padding => MediaQuery.of(this).padding;
  Size get mqSize => MediaQuery.of(this).size;
}

extension Nullabilty on Object? {
  bool get isNull => this == null;
  bool get isNotNull => this != null;
}

extension ListEmptiness on List<dynamic>? {
  bool get isNullOrEmpty => (this ?? []).isEmpty;
  bool get isNotNullOrEmpty => (this ?? []).isNotEmpty;
}

extension StrngEmptiness on String? {
  bool get isNullOrEmpty {
    return (this ?? '').isEmpty;
  }

  bool get isNotNullOrEmpty {
    return (this ?? '').isNotEmpty;
  }

  bool get isNullOrEmptyTrim {
    return (this ?? '').trim().isEmpty;
  }

  bool get isNotNullOrEmptyTrim {
    return (this ?? '').trim().isNotEmpty;
  }
}
