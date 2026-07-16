import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../shared/widgets/app_card.dart';
import '../providers/salafiya_provider.dart';
import 'salafiya_details_screen.dart';
import 'salafiya_form_screen.dart';

class SalafiyaListScreen extends StatefulWidget {
  const SalafiyaListScreen({super.key});

  @override
  State<SalafiyaListScreen> createState() => _SalafiyaListScreenState();
}

class _SalafiyaListScreenState extends State<SalafiyaListScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      context.read<SalafiyaProvider>().loadSalafiyat();
    });
  }

  Future<void> _addSalafiya() async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(builder: (_) => const SalafiyaFormScreen()),
    );

    if (!mounted) return;

    if (result == true) {
      await context.read<SalafiyaProvider>().loadSalafiyat();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('السلفيات')),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _addSalafiya,
        icon: const Icon(Icons.add),
        label: const Text('إضافة'),
      ),
      body: Consumer<SalafiyaProvider>(
        builder: (context, provider, child) {
          final salafiyat = provider.salafiyat;

          if (salafiyat.isEmpty) {
            return const Center(
              child: Text(
                'لا توجد سلفيات',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: salafiyat.length,
            separatorBuilder: (_, _) => const SizedBox(height: 16),
            itemBuilder: (context, index) {
              final salafiya = salafiyat[index];

              return AppCard(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SalafiyaDetailsScreen(salafiya: salafiya),
                    ),
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      salafiya.name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(Icons.payments_rounded, color: Colors.green),
                        const SizedBox(width: 10),
                        Text(
                          '${salafiya.amount.toStringAsFixed(0)} د.ع',
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(
                          Icons.people_alt_rounded,
                          color: Colors.blue,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${salafiya.members} مشترك',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  SalafiyaDetailsScreen(salafiya: salafiya),
                            ),
                          );
                        },
                        icon: const Icon(Icons.arrow_forward_ios, size: 16),
                        label: const Text('عرض التفاصيل'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
