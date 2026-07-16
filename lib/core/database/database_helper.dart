import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static final DatabaseHelper instance = DatabaseHelper._();

  static Database? _database;

  static const String _databaseName = 'sulafati.db';
  static const int _databaseVersion = 3;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();

    final path = join(
      dbPath,
      _databaseName,
    );

    return await openDatabase(
      path,
      version: _databaseVersion,
      onConfigure: _onConfigure,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  Future<void> _onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON;');
  }

  Future<void> _onCreate(Database db, int version) async {
    //==================================================
    // SALAFIYAT
    //==================================================

    await db.execute('''
CREATE TABLE salafiyat(

id INTEGER PRIMARY KEY AUTOINCREMENT,

name TEXT NOT NULL,

monthly_amount REAL NOT NULL,

members INTEGER NOT NULL DEFAULT 0,

start_date TEXT NOT NULL,

status INTEGER NOT NULL DEFAULT 1,

notes TEXT,

created_at TEXT NOT NULL,

updated_at TEXT NOT NULL

);
''');

    //==================================================
    // MEMBERS
    //==================================================

    await db.execute('''
CREATE TABLE members(

id INTEGER PRIMARY KEY AUTOINCREMENT,

salafiya_id INTEGER NOT NULL,

full_name TEXT NOT NULL,

phone TEXT,

notes TEXT,

is_active INTEGER NOT NULL DEFAULT 1,

join_date TEXT NOT NULL,

created_at TEXT NOT NULL,

updated_at TEXT NOT NULL,

FOREIGN KEY(salafiya_id)
REFERENCES salafiyat(id)
ON DELETE CASCADE

);
''');

    //==================================================
    // PAYMENTS
    //==================================================

    await db.execute('''
CREATE TABLE payments(

id INTEGER PRIMARY KEY AUTOINCREMENT,

salafiya_id INTEGER NOT NULL,

member_id INTEGER NOT NULL,

payment_number INTEGER NOT NULL,

amount REAL NOT NULL,

payment_date TEXT NOT NULL,

paid_at TEXT,

receipt_number TEXT,

is_paid INTEGER NOT NULL DEFAULT 0,

notes TEXT,

FOREIGN KEY(salafiya_id)
REFERENCES salafiyat(id)
ON DELETE CASCADE,

FOREIGN KEY(member_id)
REFERENCES members(id)
ON DELETE CASCADE

);
''');

    //==================================================
    // DRAWS
    //==================================================

    await db.execute('''
CREATE TABLE draws(

id INTEGER PRIMARY KEY AUTOINCREMENT,

salafiya_id INTEGER NOT NULL,

round_number INTEGER NOT NULL,

draw_date TEXT NOT NULL,

winner_id INTEGER,

notes TEXT,

FOREIGN KEY(salafiya_id)
REFERENCES salafiyat(id)
ON DELETE CASCADE

);
''');

    //==================================================
    // WINNERS
    //==================================================

    await db.execute('''
CREATE TABLE winners(

id INTEGER PRIMARY KEY AUTOINCREMENT,

salafiya_id INTEGER NOT NULL,

member_id INTEGER NOT NULL,

round_number INTEGER NOT NULL,

winner_date TEXT NOT NULL,

received_amount REAL NOT NULL,

notes TEXT,

FOREIGN KEY(salafiya_id)
REFERENCES salafiyat(id)
ON DELETE CASCADE,

FOREIGN KEY(member_id)
REFERENCES members(id)
ON DELETE CASCADE

);
''');

    //==================================================
    // SETTINGS
    //==================================================

    await db.execute('''
CREATE TABLE app_settings(

id INTEGER PRIMARY KEY,

currency TEXT DEFAULT 'IQD',

language TEXT DEFAULT 'ar',

dark_mode INTEGER DEFAULT 0,

backup_path TEXT

);
''');

    await db.insert(
      'app_settings',
      {
        'id': 1,
        'currency': 'IQD',
        'language': 'ar',
        'dark_mode': 0,
        'backup_path': '',
      },
    );
  }

  Future<void> _onUpgrade(
    Database db,
    int oldVersion,
    int newVersion,
  ) async {
    // أثناء التطوير فقط.
    // إذا تغير الإصدار نحذف القاعدة ونعيد إنشائها.

    await db.execute('DROP TABLE IF EXISTS payments');
    await db.execute('DROP TABLE IF EXISTS winners');
    await db.execute('DROP TABLE IF EXISTS draws');
    await db.execute('DROP TABLE IF EXISTS members');
    await db.execute('DROP TABLE IF EXISTS salafiyat');
    await db.execute('DROP TABLE IF EXISTS app_settings');

    await _onCreate(db, newVersion);
  }
}