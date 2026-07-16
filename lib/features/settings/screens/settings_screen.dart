import 'package:flutter/material.dart';


class SettingsScreen extends StatelessWidget {

  const SettingsScreen({
    super.key,
  });


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        title: const Text(
          'الإعدادات',
        ),

        centerTitle: true,

      ),



      body: ListView(

        padding: const EdgeInsets.all(16),


        children: [


          Card(

            child: ListTile(

              leading: const Icon(
                Icons.dark_mode_outlined,
              ),

              title: const Text(
                'الوضع الداكن',
              ),


              trailing: Switch(

                value: false,

                onChanged: (value){},

              ),

            ),

          ),



          Card(

            child: ListTile(

              leading: const Icon(
                Icons.language,
              ),

              title: const Text(
                'اللغة',
              ),


              subtitle: const Text(
                'العربية',
              ),

            ),

          ),



          Card(

            child: ListTile(

              leading: const Icon(
                Icons.backup_outlined,
              ),


              title: const Text(
                'النسخ الاحتياطي',
              ),


            ),

          ),



          Card(

            child: ListTile(

              leading: const Icon(
                Icons.info_outline,
              ),


              title: const Text(
                'حول التطبيق',
              ),


              subtitle: const Text(
                'سلفتي - إدارة السلف بسهولة واحترافية',
              ),

            ),

          ),


        ],

      ),

    );

  }

}