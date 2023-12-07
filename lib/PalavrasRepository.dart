import 'package:sqflite/sqflite.dart';

class PalavrasRepository {
  static const String _bancoDeDados = 'palavras.db';
  static const String _tabelaPalavras = 'palavras';

  static Future<Database> getDatabase() async {
    return await openDatabase(
      _bancoDeDados,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute(
          'CREATE TABLE $_tabelaPalavras (id INTEGER PRIMARY KEY AUTOINCREMENT, palavra TEXT NOT NULL)',
        );
      },
    );
  }

  static Future<List<String>> getPalavras() async {
    Database db = await getDatabase();
    var result = await db.query(_tabelaPalavras);
    return result.map((row) => row['palavra']).toList();
  }

  static Future<String> getPalavraAleatoria() async {
    List<String> palavras = await getPalavras();
    return palavras[Random().nextInt(palavras.length)];
  }
}
