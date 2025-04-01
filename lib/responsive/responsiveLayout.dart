import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget desktopScaffold;

  const Responsivelayout({
    super.key,
    required this.desktopScaffold,
    required this.mobileScaffold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileScaffold;
        } else {
          return desktopScaffold;
        }
      },
    );
  }
}
