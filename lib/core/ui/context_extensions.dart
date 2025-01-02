import 'package:flutter/material.dart';

import 'ui_constants.dart';

extension ContextExtension on BuildContext {
  void showSnackBar({required String text, Duration duration = UIConstants.kSnackBarDuration}) {
    ScaffoldMessenger.of(this).showSnackBar(SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.floating,
      duration: duration,
    ));
  }

  Future<void> showCustomBottomSheet({
    required Widget child,
    double? elevation,
    Color? backgroundColor,
    double? borderRadius,
  }) {
    return showModalBottomSheet(
      context: this,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius ?? 16.0),
              topRight: Radius.circular(borderRadius ?? 16.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.1),
                blurRadius: elevation ?? 10.0,
              ),
            ],
          ),
          child: child,
        );
      },
    );
  }

}
