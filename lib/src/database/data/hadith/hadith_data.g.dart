// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_data.dart';

// ignore_for_file: type=lint
class $HadithTable extends Hadith with TableInfo<$HadithTable, HadithData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HadithTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _book_idMeta =
      const VerificationMeta('book_id');
  @override
  late final GeneratedColumn<int> book_id = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<String> book_name = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _chapter_idMeta =
      const VerificationMeta('chapter_id');
  @override
  late final GeneratedColumn<int> chapter_id = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _section_idMeta =
      const VerificationMeta('section_id');
  @override
  late final GeneratedColumn<int> section_id = GeneratedColumn<int>(
      'section_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hadith_keyMeta =
      const VerificationMeta('hadith_key');
  @override
  late final GeneratedColumn<String> hadith_key = GeneratedColumn<String>(
      'hadith_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _hadith_idMeta =
      const VerificationMeta('hadith_id');
  @override
  late final GeneratedColumn<int> hadith_id = GeneratedColumn<int>(
      'hadith_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _narratorMeta =
      const VerificationMeta('narrator');
  @override
  late final GeneratedColumn<String> narrator = GeneratedColumn<String>(
      'narrator', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bnMeta = const VerificationMeta('bn');
  @override
  late final GeneratedColumn<String> bn = GeneratedColumn<String>(
      'bn', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _arMeta = const VerificationMeta('ar');
  @override
  late final GeneratedColumn<String> ar = GeneratedColumn<String>(
      'ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ar_diaclessMeta =
      const VerificationMeta('ar_diacless');
  @override
  late final GeneratedColumn<String> ar_diacless = GeneratedColumn<String>(
      'ar_diacless', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _grade_idMeta =
      const VerificationMeta('grade_id');
  @override
  late final GeneratedColumn<int> grade_id = GeneratedColumn<int>(
      'grade_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _gradeMeta = const VerificationMeta('grade');
  @override
  late final GeneratedColumn<String> grade = GeneratedColumn<String>(
      'grade', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _grade_colorMeta =
      const VerificationMeta('grade_color');
  @override
  late final GeneratedColumn<String> grade_color = GeneratedColumn<String>(
      'grade_color', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        book_id,
        book_name,
        chapter_id,
        section_id,
        hadith_key,
        hadith_id,
        narrator,
        bn,
        ar,
        ar_diacless,
        note,
        grade_id,
        grade,
        grade_color
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hadith';
  @override
  VerificationContext validateIntegrity(Insertable<HadithData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_book_idMeta,
          book_id.isAcceptableOrUnknown(data['book_id']!, _book_idMeta));
    } else if (isInserting) {
      context.missing(_book_idMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
          _chapter_idMeta,
          chapter_id.isAcceptableOrUnknown(
              data['chapter_id']!, _chapter_idMeta));
    } else if (isInserting) {
      context.missing(_chapter_idMeta);
    }
    if (data.containsKey('section_id')) {
      context.handle(
          _section_idMeta,
          section_id.isAcceptableOrUnknown(
              data['section_id']!, _section_idMeta));
    } else if (isInserting) {
      context.missing(_section_idMeta);
    }
    if (data.containsKey('hadith_key')) {
      context.handle(
          _hadith_keyMeta,
          hadith_key.isAcceptableOrUnknown(
              data['hadith_key']!, _hadith_keyMeta));
    } else if (isInserting) {
      context.missing(_hadith_keyMeta);
    }
    if (data.containsKey('hadith_id')) {
      context.handle(_hadith_idMeta,
          hadith_id.isAcceptableOrUnknown(data['hadith_id']!, _hadith_idMeta));
    } else if (isInserting) {
      context.missing(_hadith_idMeta);
    }
    if (data.containsKey('narrator')) {
      context.handle(_narratorMeta,
          narrator.isAcceptableOrUnknown(data['narrator']!, _narratorMeta));
    } else if (isInserting) {
      context.missing(_narratorMeta);
    }
    if (data.containsKey('bn')) {
      context.handle(_bnMeta, bn.isAcceptableOrUnknown(data['bn']!, _bnMeta));
    } else if (isInserting) {
      context.missing(_bnMeta);
    }
    if (data.containsKey('ar')) {
      context.handle(_arMeta, ar.isAcceptableOrUnknown(data['ar']!, _arMeta));
    } else if (isInserting) {
      context.missing(_arMeta);
    }
    if (data.containsKey('ar_diacless')) {
      context.handle(
          _ar_diaclessMeta,
          ar_diacless.isAcceptableOrUnknown(
              data['ar_diacless']!, _ar_diaclessMeta));
    } else if (isInserting) {
      context.missing(_ar_diaclessMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('grade_id')) {
      context.handle(_grade_idMeta,
          grade_id.isAcceptableOrUnknown(data['grade_id']!, _grade_idMeta));
    } else if (isInserting) {
      context.missing(_grade_idMeta);
    }
    if (data.containsKey('grade')) {
      context.handle(
          _gradeMeta, grade.isAcceptableOrUnknown(data['grade']!, _gradeMeta));
    } else if (isInserting) {
      context.missing(_gradeMeta);
    }
    if (data.containsKey('grade_color')) {
      context.handle(
          _grade_colorMeta,
          grade_color.isAcceptableOrUnknown(
              data['grade_color']!, _grade_colorMeta));
    } else if (isInserting) {
      context.missing(_grade_colorMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  HadithData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HadithData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      book_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      chapter_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      section_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id'])!,
      hadith_key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadith_key'])!,
      hadith_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}hadith_id'])!,
      narrator: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}narrator'])!,
      bn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}bn'])!,
      ar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar'])!,
      ar_diacless: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ar_diacless'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note']),
      grade_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}grade_id'])!,
      grade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade'])!,
      grade_color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}grade_color'])!,
    );
  }

  @override
  $HadithTable createAlias(String alias) {
    return $HadithTable(attachedDatabase, alias);
  }
}

class HadithData extends DataClass implements Insertable<HadithData> {
  final int id;
  final int book_id;
  final String book_name;
  final int chapter_id;
  final int section_id;
  final String hadith_key;
  final int hadith_id;
  final String narrator;
  final String bn;
  final String ar;
  final String ar_diacless;
  final String? note;
  final int grade_id;
  final String grade;
  final String grade_color;
  const HadithData(
      {required this.id,
      required this.book_id,
      required this.book_name,
      required this.chapter_id,
      required this.section_id,
      required this.hadith_key,
      required this.hadith_id,
      required this.narrator,
      required this.bn,
      required this.ar,
      required this.ar_diacless,
      this.note,
      required this.grade_id,
      required this.grade,
      required this.grade_color});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(book_id);
    map['book_name'] = Variable<String>(book_name);
    map['chapter_id'] = Variable<int>(chapter_id);
    map['section_id'] = Variable<int>(section_id);
    map['hadith_key'] = Variable<String>(hadith_key);
    map['hadith_id'] = Variable<int>(hadith_id);
    map['narrator'] = Variable<String>(narrator);
    map['bn'] = Variable<String>(bn);
    map['ar'] = Variable<String>(ar);
    map['ar_diacless'] = Variable<String>(ar_diacless);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['grade_id'] = Variable<int>(grade_id);
    map['grade'] = Variable<String>(grade);
    map['grade_color'] = Variable<String>(grade_color);
    return map;
  }

  HadithCompanion toCompanion(bool nullToAbsent) {
    return HadithCompanion(
      id: Value(id),
      book_id: Value(book_id),
      book_name: Value(book_name),
      chapter_id: Value(chapter_id),
      section_id: Value(section_id),
      hadith_key: Value(hadith_key),
      hadith_id: Value(hadith_id),
      narrator: Value(narrator),
      bn: Value(bn),
      ar: Value(ar),
      ar_diacless: Value(ar_diacless),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      grade_id: Value(grade_id),
      grade: Value(grade),
      grade_color: Value(grade_color),
    );
  }

  factory HadithData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HadithData(
      id: serializer.fromJson<int>(json['id']),
      book_id: serializer.fromJson<int>(json['book_id']),
      book_name: serializer.fromJson<String>(json['book_name']),
      chapter_id: serializer.fromJson<int>(json['chapter_id']),
      section_id: serializer.fromJson<int>(json['section_id']),
      hadith_key: serializer.fromJson<String>(json['hadith_key']),
      hadith_id: serializer.fromJson<int>(json['hadith_id']),
      narrator: serializer.fromJson<String>(json['narrator']),
      bn: serializer.fromJson<String>(json['bn']),
      ar: serializer.fromJson<String>(json['ar']),
      ar_diacless: serializer.fromJson<String>(json['ar_diacless']),
      note: serializer.fromJson<String?>(json['note']),
      grade_id: serializer.fromJson<int>(json['grade_id']),
      grade: serializer.fromJson<String>(json['grade']),
      grade_color: serializer.fromJson<String>(json['grade_color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'book_id': serializer.toJson<int>(book_id),
      'book_name': serializer.toJson<String>(book_name),
      'chapter_id': serializer.toJson<int>(chapter_id),
      'section_id': serializer.toJson<int>(section_id),
      'hadith_key': serializer.toJson<String>(hadith_key),
      'hadith_id': serializer.toJson<int>(hadith_id),
      'narrator': serializer.toJson<String>(narrator),
      'bn': serializer.toJson<String>(bn),
      'ar': serializer.toJson<String>(ar),
      'ar_diacless': serializer.toJson<String>(ar_diacless),
      'note': serializer.toJson<String?>(note),
      'grade_id': serializer.toJson<int>(grade_id),
      'grade': serializer.toJson<String>(grade),
      'grade_color': serializer.toJson<String>(grade_color),
    };
  }

  HadithData copyWith(
          {int? id,
          int? book_id,
          String? book_name,
          int? chapter_id,
          int? section_id,
          String? hadith_key,
          int? hadith_id,
          String? narrator,
          String? bn,
          String? ar,
          String? ar_diacless,
          Value<String?> note = const Value.absent(),
          int? grade_id,
          String? grade,
          String? grade_color}) =>
      HadithData(
        id: id ?? this.id,
        book_id: book_id ?? this.book_id,
        book_name: book_name ?? this.book_name,
        chapter_id: chapter_id ?? this.chapter_id,
        section_id: section_id ?? this.section_id,
        hadith_key: hadith_key ?? this.hadith_key,
        hadith_id: hadith_id ?? this.hadith_id,
        narrator: narrator ?? this.narrator,
        bn: bn ?? this.bn,
        ar: ar ?? this.ar,
        ar_diacless: ar_diacless ?? this.ar_diacless,
        note: note.present ? note.value : this.note,
        grade_id: grade_id ?? this.grade_id,
        grade: grade ?? this.grade,
        grade_color: grade_color ?? this.grade_color,
      );
  @override
  String toString() {
    return (StringBuffer('HadithData(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('hadith_key: $hadith_key, ')
          ..write('hadith_id: $hadith_id, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('ar_diacless: $ar_diacless, ')
          ..write('note: $note, ')
          ..write('grade_id: $grade_id, ')
          ..write('grade: $grade, ')
          ..write('grade_color: $grade_color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      book_id,
      book_name,
      chapter_id,
      section_id,
      hadith_key,
      hadith_id,
      narrator,
      bn,
      ar,
      ar_diacless,
      note,
      grade_id,
      grade,
      grade_color);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HadithData &&
          other.id == this.id &&
          other.book_id == this.book_id &&
          other.book_name == this.book_name &&
          other.chapter_id == this.chapter_id &&
          other.section_id == this.section_id &&
          other.hadith_key == this.hadith_key &&
          other.hadith_id == this.hadith_id &&
          other.narrator == this.narrator &&
          other.bn == this.bn &&
          other.ar == this.ar &&
          other.ar_diacless == this.ar_diacless &&
          other.note == this.note &&
          other.grade_id == this.grade_id &&
          other.grade == this.grade &&
          other.grade_color == this.grade_color);
}

class HadithCompanion extends UpdateCompanion<HadithData> {
  final Value<int> id;
  final Value<int> book_id;
  final Value<String> book_name;
  final Value<int> chapter_id;
  final Value<int> section_id;
  final Value<String> hadith_key;
  final Value<int> hadith_id;
  final Value<String> narrator;
  final Value<String> bn;
  final Value<String> ar;
  final Value<String> ar_diacless;
  final Value<String?> note;
  final Value<int> grade_id;
  final Value<String> grade;
  final Value<String> grade_color;
  final Value<int> rowid;
  const HadithCompanion({
    this.id = const Value.absent(),
    this.book_id = const Value.absent(),
    this.book_name = const Value.absent(),
    this.chapter_id = const Value.absent(),
    this.section_id = const Value.absent(),
    this.hadith_key = const Value.absent(),
    this.hadith_id = const Value.absent(),
    this.narrator = const Value.absent(),
    this.bn = const Value.absent(),
    this.ar = const Value.absent(),
    this.ar_diacless = const Value.absent(),
    this.note = const Value.absent(),
    this.grade_id = const Value.absent(),
    this.grade = const Value.absent(),
    this.grade_color = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HadithCompanion.insert({
    required int id,
    required int book_id,
    required String book_name,
    required int chapter_id,
    required int section_id,
    required String hadith_key,
    required int hadith_id,
    required String narrator,
    required String bn,
    required String ar,
    required String ar_diacless,
    this.note = const Value.absent(),
    required int grade_id,
    required String grade,
    required String grade_color,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        book_id = Value(book_id),
        book_name = Value(book_name),
        chapter_id = Value(chapter_id),
        section_id = Value(section_id),
        hadith_key = Value(hadith_key),
        hadith_id = Value(hadith_id),
        narrator = Value(narrator),
        bn = Value(bn),
        ar = Value(ar),
        ar_diacless = Value(ar_diacless),
        grade_id = Value(grade_id),
        grade = Value(grade),
        grade_color = Value(grade_color);
  static Insertable<HadithData> custom({
    Expression<int>? id,
    Expression<int>? book_id,
    Expression<String>? book_name,
    Expression<int>? chapter_id,
    Expression<int>? section_id,
    Expression<String>? hadith_key,
    Expression<int>? hadith_id,
    Expression<String>? narrator,
    Expression<String>? bn,
    Expression<String>? ar,
    Expression<String>? ar_diacless,
    Expression<String>? note,
    Expression<int>? grade_id,
    Expression<String>? grade,
    Expression<String>? grade_color,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (book_id != null) 'book_id': book_id,
      if (book_name != null) 'book_name': book_name,
      if (chapter_id != null) 'chapter_id': chapter_id,
      if (section_id != null) 'section_id': section_id,
      if (hadith_key != null) 'hadith_key': hadith_key,
      if (hadith_id != null) 'hadith_id': hadith_id,
      if (narrator != null) 'narrator': narrator,
      if (bn != null) 'bn': bn,
      if (ar != null) 'ar': ar,
      if (ar_diacless != null) 'ar_diacless': ar_diacless,
      if (note != null) 'note': note,
      if (grade_id != null) 'grade_id': grade_id,
      if (grade != null) 'grade': grade,
      if (grade_color != null) 'grade_color': grade_color,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HadithCompanion copyWith(
      {Value<int>? id,
      Value<int>? book_id,
      Value<String>? book_name,
      Value<int>? chapter_id,
      Value<int>? section_id,
      Value<String>? hadith_key,
      Value<int>? hadith_id,
      Value<String>? narrator,
      Value<String>? bn,
      Value<String>? ar,
      Value<String>? ar_diacless,
      Value<String?>? note,
      Value<int>? grade_id,
      Value<String>? grade,
      Value<String>? grade_color,
      Value<int>? rowid}) {
    return HadithCompanion(
      id: id ?? this.id,
      book_id: book_id ?? this.book_id,
      book_name: book_name ?? this.book_name,
      chapter_id: chapter_id ?? this.chapter_id,
      section_id: section_id ?? this.section_id,
      hadith_key: hadith_key ?? this.hadith_key,
      hadith_id: hadith_id ?? this.hadith_id,
      narrator: narrator ?? this.narrator,
      bn: bn ?? this.bn,
      ar: ar ?? this.ar,
      ar_diacless: ar_diacless ?? this.ar_diacless,
      note: note ?? this.note,
      grade_id: grade_id ?? this.grade_id,
      grade: grade ?? this.grade,
      grade_color: grade_color ?? this.grade_color,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (book_id.present) {
      map['book_id'] = Variable<int>(book_id.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<String>(book_name.value);
    }
    if (chapter_id.present) {
      map['chapter_id'] = Variable<int>(chapter_id.value);
    }
    if (section_id.present) {
      map['section_id'] = Variable<int>(section_id.value);
    }
    if (hadith_key.present) {
      map['hadith_key'] = Variable<String>(hadith_key.value);
    }
    if (hadith_id.present) {
      map['hadith_id'] = Variable<int>(hadith_id.value);
    }
    if (narrator.present) {
      map['narrator'] = Variable<String>(narrator.value);
    }
    if (bn.present) {
      map['bn'] = Variable<String>(bn.value);
    }
    if (ar.present) {
      map['ar'] = Variable<String>(ar.value);
    }
    if (ar_diacless.present) {
      map['ar_diacless'] = Variable<String>(ar_diacless.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (grade_id.present) {
      map['grade_id'] = Variable<int>(grade_id.value);
    }
    if (grade.present) {
      map['grade'] = Variable<String>(grade.value);
    }
    if (grade_color.present) {
      map['grade_color'] = Variable<String>(grade_color.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HadithCompanion(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('hadith_key: $hadith_key, ')
          ..write('hadith_id: $hadith_id, ')
          ..write('narrator: $narrator, ')
          ..write('bn: $bn, ')
          ..write('ar: $ar, ')
          ..write('ar_diacless: $ar_diacless, ')
          ..write('note: $note, ')
          ..write('grade_id: $grade_id, ')
          ..write('grade: $grade, ')
          ..write('grade_color: $grade_color, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$HadithDatabase extends GeneratedDatabase {
  _$HadithDatabase(QueryExecutor e) : super(e);
  late final $HadithTable hadith = $HadithTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [hadith];
}
