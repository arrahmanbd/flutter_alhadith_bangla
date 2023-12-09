// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_data.dart';

// ignore_for_file: type=lint
class $ChapterTable extends Chapter with TableInfo<$ChapterTable, ChapterData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChapterTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _chapter_idMeta =
      const VerificationMeta('chapter_id');
  @override
  late final GeneratedColumn<int> chapter_id = GeneratedColumn<int>(
      'chapter_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _book_idMeta =
      const VerificationMeta('book_id');
  @override
  late final GeneratedColumn<int> book_id = GeneratedColumn<int>(
      'book_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _hadis_rangeMeta =
      const VerificationMeta('hadis_range');
  @override
  late final GeneratedColumn<String> hadis_range = GeneratedColumn<String>(
      'hadis_range', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<String> book_name = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, chapter_id, book_id, title, number, hadis_range, book_name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'chapter';
  @override
  VerificationContext validateIntegrity(Insertable<ChapterData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('chapter_id')) {
      context.handle(
          _chapter_idMeta,
          chapter_id.isAcceptableOrUnknown(
              data['chapter_id']!, _chapter_idMeta));
    } else if (isInserting) {
      context.missing(_chapter_idMeta);
    }
    if (data.containsKey('book_id')) {
      context.handle(_book_idMeta,
          book_id.isAcceptableOrUnknown(data['book_id']!, _book_idMeta));
    } else if (isInserting) {
      context.missing(_book_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('hadis_range')) {
      context.handle(
          _hadis_rangeMeta,
          hadis_range.isAcceptableOrUnknown(
              data['hadis_range']!, _hadis_rangeMeta));
    } else if (isInserting) {
      context.missing(_hadis_rangeMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ChapterData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChapterData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      chapter_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      book_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      hadis_range: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hadis_range'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
    );
  }

  @override
  $ChapterTable createAlias(String alias) {
    return $ChapterTable(attachedDatabase, alias);
  }
}

class ChapterData extends DataClass implements Insertable<ChapterData> {
  final int id;
  final int chapter_id;
  final int book_id;
  final String title;
  final int number;
  final String hadis_range;
  final String book_name;
  const ChapterData(
      {required this.id,
      required this.chapter_id,
      required this.book_id,
      required this.title,
      required this.number,
      required this.hadis_range,
      required this.book_name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['chapter_id'] = Variable<int>(chapter_id);
    map['book_id'] = Variable<int>(book_id);
    map['title'] = Variable<String>(title);
    map['number'] = Variable<int>(number);
    map['hadis_range'] = Variable<String>(hadis_range);
    map['book_name'] = Variable<String>(book_name);
    return map;
  }

  ChapterCompanion toCompanion(bool nullToAbsent) {
    return ChapterCompanion(
      id: Value(id),
      chapter_id: Value(chapter_id),
      book_id: Value(book_id),
      title: Value(title),
      number: Value(number),
      hadis_range: Value(hadis_range),
      book_name: Value(book_name),
    );
  }

  factory ChapterData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChapterData(
      id: serializer.fromJson<int>(json['id']),
      chapter_id: serializer.fromJson<int>(json['chapter_id']),
      book_id: serializer.fromJson<int>(json['book_id']),
      title: serializer.fromJson<String>(json['title']),
      number: serializer.fromJson<int>(json['number']),
      hadis_range: serializer.fromJson<String>(json['hadis_range']),
      book_name: serializer.fromJson<String>(json['book_name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'chapter_id': serializer.toJson<int>(chapter_id),
      'book_id': serializer.toJson<int>(book_id),
      'title': serializer.toJson<String>(title),
      'number': serializer.toJson<int>(number),
      'hadis_range': serializer.toJson<String>(hadis_range),
      'book_name': serializer.toJson<String>(book_name),
    };
  }

  ChapterData copyWith(
          {int? id,
          int? chapter_id,
          int? book_id,
          String? title,
          int? number,
          String? hadis_range,
          String? book_name}) =>
      ChapterData(
        id: id ?? this.id,
        chapter_id: chapter_id ?? this.chapter_id,
        book_id: book_id ?? this.book_id,
        title: title ?? this.title,
        number: number ?? this.number,
        hadis_range: hadis_range ?? this.hadis_range,
        book_name: book_name ?? this.book_name,
      );
  @override
  String toString() {
    return (StringBuffer('ChapterData(')
          ..write('id: $id, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('book_id: $book_id, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadis_range: $hadis_range, ')
          ..write('book_name: $book_name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, chapter_id, book_id, title, number, hadis_range, book_name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChapterData &&
          other.id == this.id &&
          other.chapter_id == this.chapter_id &&
          other.book_id == this.book_id &&
          other.title == this.title &&
          other.number == this.number &&
          other.hadis_range == this.hadis_range &&
          other.book_name == this.book_name);
}

class ChapterCompanion extends UpdateCompanion<ChapterData> {
  final Value<int> id;
  final Value<int> chapter_id;
  final Value<int> book_id;
  final Value<String> title;
  final Value<int> number;
  final Value<String> hadis_range;
  final Value<String> book_name;
  final Value<int> rowid;
  const ChapterCompanion({
    this.id = const Value.absent(),
    this.chapter_id = const Value.absent(),
    this.book_id = const Value.absent(),
    this.title = const Value.absent(),
    this.number = const Value.absent(),
    this.hadis_range = const Value.absent(),
    this.book_name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChapterCompanion.insert({
    required int id,
    required int chapter_id,
    required int book_id,
    required String title,
    required int number,
    required String hadis_range,
    required String book_name,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        chapter_id = Value(chapter_id),
        book_id = Value(book_id),
        title = Value(title),
        number = Value(number),
        hadis_range = Value(hadis_range),
        book_name = Value(book_name);
  static Insertable<ChapterData> custom({
    Expression<int>? id,
    Expression<int>? chapter_id,
    Expression<int>? book_id,
    Expression<String>? title,
    Expression<int>? number,
    Expression<String>? hadis_range,
    Expression<String>? book_name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (chapter_id != null) 'chapter_id': chapter_id,
      if (book_id != null) 'book_id': book_id,
      if (title != null) 'title': title,
      if (number != null) 'number': number,
      if (hadis_range != null) 'hadis_range': hadis_range,
      if (book_name != null) 'book_name': book_name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChapterCompanion copyWith(
      {Value<int>? id,
      Value<int>? chapter_id,
      Value<int>? book_id,
      Value<String>? title,
      Value<int>? number,
      Value<String>? hadis_range,
      Value<String>? book_name,
      Value<int>? rowid}) {
    return ChapterCompanion(
      id: id ?? this.id,
      chapter_id: chapter_id ?? this.chapter_id,
      book_id: book_id ?? this.book_id,
      title: title ?? this.title,
      number: number ?? this.number,
      hadis_range: hadis_range ?? this.hadis_range,
      book_name: book_name ?? this.book_name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (chapter_id.present) {
      map['chapter_id'] = Variable<int>(chapter_id.value);
    }
    if (book_id.present) {
      map['book_id'] = Variable<int>(book_id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (hadis_range.present) {
      map['hadis_range'] = Variable<String>(hadis_range.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<String>(book_name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChapterCompanion(')
          ..write('id: $id, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('book_id: $book_id, ')
          ..write('title: $title, ')
          ..write('number: $number, ')
          ..write('hadis_range: $hadis_range, ')
          ..write('book_name: $book_name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$ChapterDatabase extends GeneratedDatabase {
  _$ChapterDatabase(QueryExecutor e) : super(e);
  late final $ChapterTable chapter = $ChapterTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [chapter];
}
