import 'package:alhadith/src/database/entity/chapter_entity.dart';
import 'package:drift/drift.dart';

import '../../helper/database_helper.dart';
part 'chapter_data.g.dart';

@DriftDatabase(tables: [Chapter])
class ChapterDatabase extends _$ChapterDatabase {
  ChapterDatabase() : super(openConnection());

  @override
  int get schemaVersion => 1;
}
