import 'package:flutter/material.dart';

import '../models/member.dart';


class MemberDetailsScreen extends StatelessWidget {

  final Member member;


  const MemberDetailsScreen({
    super.key,
    required this.member,
  });



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'تفاصيل المشترك',
        ),
      ),


      body: Padding(

        padding: const EdgeInsets.all(16),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              'الاسم: ${member.fullName}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),


            const SizedBox(height: 12),


            Text(
              'الهاتف: ${member.phone ?? "لا يوجد"}',
            ),


            const SizedBox(height: 12),


            Text(
              'الملاحظات: ${member.notes ?? "لا يوجد"}',
            ),

          ],

        ),

      ),

    );

  }

}