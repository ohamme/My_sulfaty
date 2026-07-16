import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

import 'features/salafiya/providers/salafiya_provider.dart';
import 'features/members/providers/member_provider.dart';


void main() {

  runApp(

    MultiProvider(

      providers: [

        ChangeNotifierProvider(
          create: (_) => SalafiyaProvider(),
        ),


        ChangeNotifierProvider(
          create: (_) => MemberProvider(),
        ),

      ],


      child: const SulafatiApp(),

    ),

  );

}