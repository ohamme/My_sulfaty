import 'package:flutter/material.dart';

import '../../salafiya/screens/salafiya_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_HomeItem> items = [
      _HomeItem(
        title: 'السلفيات',
        icon: Icons.account_balance_wallet,
        color: Colors.green,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SalafiyaListScreen()),
          );
        },
      ),
      const _HomeItem(
        title: 'المشتركون',
        icon: Icons.people,
        color: Colors.blue,
      ),
      const _HomeItem(
        title: 'الدفعات',
        icon: Icons.payments,
        color: Colors.orange,
      ),
      const _HomeItem(
        title: 'القرعة',
        icon: Icons.casino,
        color: Colors.purple,
      ),
      const _HomeItem(
        title: 'التقارير',
        icon: Icons.bar_chart,
        color: Colors.red,
      ),
      const _HomeItem(
        title: 'الإعدادات',
        icon: Icons.settings,
        color: Colors.grey,
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('سلفتي'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.1,
          ),
          itemBuilder: (context, index) {
            final item = items[index];

            return InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: item.onTap,
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(item.icon, size: 48, color: item.color),
                    const SizedBox(height: 12),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _HomeItem {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  const _HomeItem({
    required this.title,
    required this.icon,
    required this.color,
    this.onTap,
  });
}
