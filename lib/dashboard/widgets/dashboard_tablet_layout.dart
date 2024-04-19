import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(width: 24),
        Expanded(flex: 2, child: DashboardMobileLayout()),
      ],
    );
  }
}
