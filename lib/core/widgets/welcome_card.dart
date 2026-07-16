import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(
        AppSizes.lg,
      ),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.secondary,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),

        borderRadius: BorderRadius.circular(
          AppSizes.cardRadius,
        ),

        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: 0.25,
            ),

            blurRadius: 20,

            offset: const Offset(
              0,
              10,
            ),
          ),
        ],
      ),


      child: Column(

        mainAxisAlignment:
            MainAxisAlignment.center,

        crossAxisAlignment:
            CrossAxisAlignment.center,

        children: [


          const Icon(
            Icons.account_balance_wallet_rounded,

            color: Colors.white,

            size: 45,
          ),


          const SizedBox(
            height: AppSizes.md,
          ),


          const Text(
            'أهلاً بك في تطبيق سلفتي',

            textAlign: TextAlign.center,

            style: TextStyle(

              color: Colors.white,

              fontSize: 24,

              fontWeight: FontWeight.bold,

            ),
          ),


          const SizedBox(
            height: AppSizes.sm,
          ),


          Text(
            'إدارة السلف بسهولة واحترافية',

            textAlign: TextAlign.center,

            style: TextStyle(

              color: Colors.white.withValues(
                alpha: 0.9,
              ),

              fontSize: 16,

            ),
          ),

        ],
      ),
    );
  }
}