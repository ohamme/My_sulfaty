import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSpacing.xl),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.primaryLight,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '👋 أهلاً بك في سلفتي',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      'إدارة السلف بسهولة واحترافية',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: AppSpacing.xxl),


              const Text(
                'الإحصائيات',
                style: AppTextStyles.headlineMedium,
              ),


              const SizedBox(height: AppSpacing.lg),


              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),

                crossAxisCount: 2,

                crossAxisSpacing: AppSpacing.lg,
                mainAxisSpacing: AppSpacing.lg,

                children: const [

                  _StatCard(
                    icon: Icons.account_balance_wallet,
                    title: 'عدد السلف',
                    value: '0',
                    color: AppColors.money,
                  ),


                  _StatCard(
                    icon: Icons.people_alt,
                    title: 'المشتركون',
                    value: '0',
                    color: AppColors.members,
                  ),


                  _StatCard(
                    icon: Icons.payments,
                    title: 'إجمالي الأموال',
                    value: '0 د.ع',
                    color: AppColors.success,
                  ),


                  _StatCard(
                    icon: Icons.analytics,
                    title: 'السلف النشطة',
                    value: '0',
                    color: AppColors.reports,
                  ),

                ],
              ),


              const SizedBox(height: AppSpacing.xxl),


              const Text(
                'إجراءات سريعة',
                style: AppTextStyles.headlineMedium,
              ),


              const SizedBox(height: AppSpacing.lg),


              Row(
                children: [

                  Expanded(
                    child: _ActionCard(
                      icon: Icons.add_circle,
                      title: 'إنشاء سلفة',
                    ),
                  ),

                  const SizedBox(
                    width: AppSpacing.md,
                  ),

                  Expanded(
                    child: _ActionCard(
                      icon: Icons.person_add,
                      title: 'إضافة مشترك',
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class _StatCard extends StatelessWidget {

  final IconData icon;
  final String title;
  final String value;
  final Color color;


  const _StatCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.color,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(

        padding: const EdgeInsets.all(AppSpacing.lg),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Icon(
              icon,
              size: 32,
              color: color,
            ),


            const Spacer(),


            Text(
              value,
              style: AppTextStyles.titleLarge,
            ),


            const SizedBox(height: 4),


            Text(
              title,
              style: AppTextStyles.bodyMedium,
            ),

          ],
        ),
      ),
    );
  }
}




class _ActionCard extends StatelessWidget {

  final IconData icon;
  final String title;


  const _ActionCard({
    required this.icon,
    required this.title,
  });


  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(

        padding: const EdgeInsets.all(AppSpacing.lg),

        child: Column(

          children: [

            Icon(
              icon,
              size: 35,
              color: AppColors.primary,
            ),


            const SizedBox(height: AppSpacing.sm),


            Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyLarge,
            ),

          ],
        ),
      ),
    );
  }
}