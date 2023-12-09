import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../../core/assets.dart';

LazyDatabase openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final dbPath = path.join(dbFolder.path, Res.dbName);
    final file = File(dbPath);
    bool check = await file.exists();
    if (!check) {
      ByteData data = await rootBundle.load(path.join(Res.dbAsset, Res.dbName));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await file.writeAsBytes(bytes, flush: true);
    }
    return NativeDatabase.createInBackground(file);
  });
}
