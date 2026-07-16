import 'package:flutter/material.dart';

import '../../../core/database/database_helper.dart';
import '../repositories/home_repository.dart';


class HomeProvider extends ChangeNotifier {


  final HomeRepository repository;


  HomeProvider()
      : repository = HomeRepository(
          databaseHelper: DatabaseHelper.instance,
        );



  int salafCount = 0;

  int membersCount = 0;

  double totalAmount = 0;

  int activeSalafCount = 0;



  bool loading = false;



  Future<void> loadDashboard() async {


    try {


      loading = true;

      notifyListeners();



      salafCount =
          await repository.getSalafCount();



      membersCount =
          await repository.getMembersCount();



      totalAmount =
          await repository.getTotalAmount();



      activeSalafCount =
          await repository.getActiveSalafCount();



    } catch (e) {


      debugPrint(
        'Dashboard Error: $e',
      );


      salafCount = 0;

      membersCount = 0;

      totalAmount = 0;

      activeSalafCount = 0;


    }



    loading = false;

    notifyListeners();


  }


}