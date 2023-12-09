import 'package:drift/drift.dart';

import '../../entity/section_entity.dart';
import '../../helper/database_helper.dart';
part 'section_data.g.dart';

@DriftDatabase(tables: [Section])
class SectionDatabase extends _$SectionDatabase {
  SectionDatabase() : super(openConnection());

  @override
  int get schemaVersion => 1;
}
