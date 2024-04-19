import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard_app.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const DashboardApp(),
  ));
}
