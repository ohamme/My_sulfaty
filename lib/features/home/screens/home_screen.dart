import 'package:flutter/material.dart';

import '../../../core/widgets/dashboard_grid.dart';
import '../../../core/widgets/welcome_card.dart';



class HomeScreen extends StatelessWidget {

  const HomeScreen({
    super.key,
  });



  @override
  Widget build(BuildContext context) {


    return Scaffold(


      appBar: AppBar(

        title: const Text(
          'سلفتي',
        ),

        centerTitle: true,

      ),



      body: SingleChildScrollView(

        padding: const EdgeInsets.all(16),


        child: Column(

          children: [


            const WelcomeCard(),

            const SizedBox(height: 24),

            const DashboardGrid(),


          ],

        ),

      ),


    );

  }

}