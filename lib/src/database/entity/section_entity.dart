import 'package:drift/drift.dart';

class Section extends Table {
  IntColumn get id => integer()();
  IntColumn get book_id => integer()();
  TextColumn get book_name => text().nullable()();
  IntColumn get chapter_id => integer()();
  IntColumn get section_id => integer()();
  TextColumn get title => text().nullable()();
  TextColumn get preface => text().nullable()();
  TextColumn get number => text().nullable()();
  IntColumn get sort_order => integer().nullable()();
}
