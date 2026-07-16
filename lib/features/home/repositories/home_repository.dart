import '../../../core/database/database_helper.dart';

class HomeRepository {
  final DatabaseHelper databaseHelper;

  HomeRepository({
    required this.databaseHelper,
  });

  Future<int> getSalafCount() async {
    final db = await databaseHelper.database;

    final result = await db.rawQuery(
      'SELECT COUNT(*) AS count FROM salafiyat',
    );

    final value = result.first['count'];

    if (value == null) return 0;

    return (value as num).toInt();
  }

  Future<int> getMembersCount() async {
    final db = await databaseHelper.database;

    final result = await db.rawQuery(
      'SELECT COUNT(*) AS count FROM members',
    );

    final value = result.first['count'];

    if (value == null) return 0;

    return (value as num).toInt();
  }

  Future<double> getTotalAmount() async {
    final db = await databaseHelper.database;

    final result = await db.rawQuery(
      'SELECT SUM(amount) AS total FROM salafiyat',
    );

    final value = result.first['total'];

    if (value == null) {
      return 0.0;
    }

    return (value as num).toDouble();
  }

  Future<int> getActiveSalafCount() async {
    final db = await databaseHelper.database;

    final result = await db.rawQuery(
      '''
      SELECT COUNT(*) AS count
      FROM salafiyat
      WHERE members > 0
      ''',
    );

    final value = result.first['count'];

    if (value == null) return 0;

    return (value as num).toInt();
  }
}