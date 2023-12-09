import 'package:drift/drift.dart';

import '../../entity/book_entity.dart';
import '../../helper/database_helper.dart';
part 'book_database.g.dart';

@DriftDatabase(tables: [Books])
class BookDatabase extends _$BookDatabase {
  BookDatabase() : super(openConnection());

  @override
  int get schemaVersion => 1;
}
