import 'package:alhadith/src/database/entity/hadith_entity.dart';
import 'package:drift/drift.dart';

import '../../helper/database_helper.dart';
part 'hadith_data.g.dart';

@DriftDatabase(tables: [Hadith])
class HadithDatabase extends _$HadithDatabase {
  HadithDatabase() : super(openConnection());

  @override
  int get schemaVersion => 1;
}
