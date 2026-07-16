import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/home/providers/home_provider.dart';
import 'statistics_card.dart';

class DashboardGrid extends StatelessWidget {
  const DashboardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, child) {
        if (provider.loading) {
          return const Padding(
            padding: EdgeInsets.all(40),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.92,
          ),
          children: [
            StatisticsCard(
              icon: Icons.account_balance_wallet_rounded,
              title: 'عدد السلف',
              value: provider.salafCount.toString(),
              color: const Color(0xFF2563EB),
            ),
            StatisticsCard(
              icon: Icons.people_alt_rounded,
              title: 'المشتركون',
              value: provider.membersCount.toString(),
              color: const Color(0xFF9333EA),
            ),
            StatisticsCard(
              icon: Icons.payments_rounded,
              title: 'إجمالي الأموال',
              value: provider.totalAmount.toStringAsFixed(0),
              color: const Color(0xFF16A34A),
            ),
            StatisticsCard(
              icon: Icons.trending_up_rounded,
              title: 'السلف النشطة',
              value: provider.activeSalafCount.toString(),
              color: const Color(0xFFF59E0B),
            ),
          ],
        );
      },
    );
  }
}