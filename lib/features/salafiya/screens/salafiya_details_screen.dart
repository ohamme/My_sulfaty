import 'package:flutter/material.dart';

import '../../members/screens/member_list_screen.dart';
import '../models/salafiya.dart';


class SalafiyaDetailsScreen extends StatelessWidget {

  final Salafiya salafiya;


  const SalafiyaDetailsScreen({

    super.key,

    required this.salafiya,

  });



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text(
          salafiya.name,
        ),

      ),


      body: ListView(

        padding: const EdgeInsets.all(16),

        children: [


          Card(

            child: Padding(

              padding: const EdgeInsets.all(16),

              child: Column(

                children: [


                  const Text(

                    'بيانات السلفة',

                    style: TextStyle(

                      fontSize: 20,

                      fontWeight: FontWeight.bold,

                    ),

                  ),


                  const SizedBox(height: 20),



                  _infoRow(

                    'اسم السلفة',

                    salafiya.name,

                  ),



                  const Divider(),



                  _infoRow(

                    'قيمة السلفة',

                    '${salafiya.amount.toStringAsFixed(0)} د.ع',

                  ),



                  const Divider(),



                  _infoRow(

                    'عدد المشتركين',

                    salafiya.members.toString(),

                  ),



                ],

              ),

            ),

          ),



          const SizedBox(height: 20),



          FilledButton.icon(

            icon: const Icon(Icons.people),


            label: const Text(

              'إدارة المشتركين',

            ),



            onPressed: () {


              if (salafiya.id == null) {


                ScaffoldMessenger.of(context).showSnackBar(

                  const SnackBar(

                    content: Text(

                      'خطأ: رقم السلفة غير موجود',

                    ),

                  ),

                );


                return;

              }



              Navigator.push(

                context,

                MaterialPageRoute(

                  builder: (_) => MemberListScreen(

                    salafiyaId: salafiya.id!,

                  ),

                ),

              );


            },

          ),



          const SizedBox(height: 12),



          FilledButton.icon(

            icon: const Icon(Icons.payments),


            label: const Text(

              'الدفعات',

            ),



            onPressed: () {


              ScaffoldMessenger.of(context).showSnackBar(

                const SnackBar(

                  content: Text(

                    'نظام الدفعات سيتم بناؤه لاحقاً',

                  ),

                ),

              );


            },

          ),



          const SizedBox(height: 12),



          FilledButton.icon(

            icon: const Icon(Icons.casino),


            label: const Text(

              'القرعة',

            ),



            onPressed: () {


              ScaffoldMessenger.of(context).showSnackBar(

                const SnackBar(

                  content: Text(

                    'نظام القرعة سيتم بناؤه لاحقاً',

                  ),

                ),

              );


            },

          ),



          const SizedBox(height: 12),



          FilledButton.icon(

            icon: const Icon(Icons.bar_chart),


            label: const Text(

              'التقارير',

            ),



            onPressed: () {


              ScaffoldMessenger.of(context).showSnackBar(

                const SnackBar(

                  content: Text(

                    'نظام التقارير سيتم بناؤه لاحقاً',

                  ),

                ),

              );


            },

          ),



        ],

      ),

    );

  }




  Widget _infoRow(

    String title,

    String value,

  ) {


    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [


        Text(

          title,

          style: const TextStyle(

            fontSize: 16,

          ),

        ),



        Text(

          value,

          style: const TextStyle(

            fontSize: 16,

            fontWeight: FontWeight.bold,

          ),

        ),


      ],

    );


  }

}