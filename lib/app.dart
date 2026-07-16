import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'features/dashboard/screens/dashboard_screen.dart';

class SulafatiApp extends StatelessWidget {
  const SulafatiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'سلفتي',

      theme: AppTheme.light,

      locale: const Locale('ar'),

      home: const DashboardScreen(),
    );
  }
}