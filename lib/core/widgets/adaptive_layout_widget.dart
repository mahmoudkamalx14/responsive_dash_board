import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/custom_drawer.dart';

class AdaptiveLayout extends StatefulWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < 700
          ? AppBar(
              backgroundColor: const Color(0xFFF7F9FA),
              elevation: 0.0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                  setState(() {});
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 700 ? const CustomDrawer() : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 700) {
            return widget.mobileLayout(context);
          }
          if (constraints.maxWidth < 1200) {
            return widget.tabletLayout(context);
          } else {
            return widget.desktopLayout(context);
          }
        },
      ),
    );
  }
}
