import 'package:sqflite/sqflite.dart';

import '../../../core/database/database_helper.dart';
import '../models/member.dart';


class MemberRepository {

  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;



  Future<int> insert(Member member) async {

    final db = await _databaseHelper.database;


    return await db.insert(
      'members',
      member.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );

  }



  Future<List<Member>> getBySalafiya(int salafiyaId) async {

    final db = await _databaseHelper.database;


    final result = await db.query(
      'members',
      where: 'salafiya_id = ?',
      whereArgs: [salafiyaId],
      orderBy: 'full_name ASC',
    );


    return result
        .map((e) => Member.fromMap(e))
        .toList();

  }



  Future<int> update(Member member) async {

    final db = await _databaseHelper.database;


    return await db.update(
      'members',
      member.toMap(),
      where: 'id = ?',
      whereArgs: [member.id],
    );

  }



  Future<int> delete(int id) async {

    final db = await _databaseHelper.database;


    return await db.delete(
      'members',
      where: 'id = ?',
      whereArgs: [id],
    );

  }

}