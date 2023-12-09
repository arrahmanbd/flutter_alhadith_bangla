import 'package:drift/drift.dart';

class Chapter extends Table {
  IntColumn get id => integer()();
  IntColumn get chapter_id => integer()();
  IntColumn get book_id => integer()();
  TextColumn get title => text()();
  IntColumn get number => integer()();
  TextColumn get hadis_range => text()();
  TextColumn get book_name => text()();
}
