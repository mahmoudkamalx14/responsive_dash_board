import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dash_board/dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_dash_board/dashboard/widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const DashboardMobileLayout(),
      tabletLayout: (context) => const DashboardTabletLayout(),
      desktopLayout: (context) => const DashboardDesktopLayout(),
    );
  }
}
