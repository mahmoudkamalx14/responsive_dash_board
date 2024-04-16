import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFFAFAFA),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return mobileLayout(context);
          }
          if (constraints.maxWidth < 900) {
            return tabletLayout(context);
          } else {
            return desktopLayout(context);
          }
        },
      ),
    );
  }
}
