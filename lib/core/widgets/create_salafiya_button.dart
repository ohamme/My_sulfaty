import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';


class CreateSalafiyaButton extends StatelessWidget {

  final VoidCallback onPressed;


  const CreateSalafiyaButton({
    super.key,
    required this.onPressed,
  });


  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: double.infinity,

      height: AppSizes.buttonHeight,


      child: FilledButton.icon(

        onPressed: onPressed,


        icon: const Icon(
          Icons.add_circle_outline_rounded,
        ),


        label: const Text(
          'إنشاء سلفة جديدة',
        ),


        style: FilledButton.styleFrom(

          backgroundColor: AppColors.primary,


          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(
              AppSizes.radius,
            ),

          ),


          textStyle: const TextStyle(

            fontSize: 17,

            fontWeight: FontWeight.bold,

          ),

        ),

      ),

    );

  }

}