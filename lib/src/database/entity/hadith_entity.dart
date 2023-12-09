import 'package:drift/drift.dart';

class Hadith extends Table {
  IntColumn get id => integer()();
  IntColumn get book_id => integer()();
  TextColumn get book_name => text()();
  IntColumn get chapter_id => integer()();
  IntColumn get section_id => integer()();
  TextColumn get hadith_key => text()();
  IntColumn get hadith_id => integer()();
  TextColumn get narrator => text()();
  TextColumn get bn => text()();
  TextColumn get ar => text()();
  TextColumn get ar_diacless => text()();
  TextColumn get note => text().nullable()();
  IntColumn get grade_id => integer()();
  TextColumn get grade => text()();
  TextColumn get grade_color => text()();
}
