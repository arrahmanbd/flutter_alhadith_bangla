// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_data.dart';

// ignore_for_file: type=lint
class $SectionTable extends Section with TableInfo<$SectionTable, SectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SectionTable(this.attachedDatabase, [this._alias]);
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
      'book_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
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
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _prefaceMeta =
      const VerificationMeta('preface');
  @override
  late final GeneratedColumn<String> preface = GeneratedColumn<String>(
      'preface', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sort_orderMeta =
      const VerificationMeta('sort_order');
  @override
  late final GeneratedColumn<int> sort_order = GeneratedColumn<int>(
      'sort_order', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        book_id,
        book_name,
        chapter_id,
        section_id,
        title,
        preface,
        number,
        sort_order
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'section';
  @override
  VerificationContext validateIntegrity(Insertable<SectionData> instance,
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
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('preface')) {
      context.handle(_prefaceMeta,
          preface.isAcceptableOrUnknown(data['preface']!, _prefaceMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    }
    if (data.containsKey('sort_order')) {
      context.handle(
          _sort_orderMeta,
          sort_order.isAcceptableOrUnknown(
              data['sort_order']!, _sort_orderMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SectionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SectionData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      book_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}book_id'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name']),
      chapter_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}chapter_id'])!,
      section_id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}section_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      preface: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preface']),
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number']),
      sort_order: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sort_order']),
    );
  }

  @override
  $SectionTable createAlias(String alias) {
    return $SectionTable(attachedDatabase, alias);
  }
}

class SectionData extends DataClass implements Insertable<SectionData> {
  final int id;
  final int book_id;
  final String? book_name;
  final int chapter_id;
  final int section_id;
  final String? title;
  final String? preface;
  final String? number;
  final int? sort_order;
  const SectionData(
      {required this.id,
      required this.book_id,
      this.book_name,
      required this.chapter_id,
      required this.section_id,
      this.title,
      this.preface,
      this.number,
      this.sort_order});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['book_id'] = Variable<int>(book_id);
    if (!nullToAbsent || book_name != null) {
      map['book_name'] = Variable<String>(book_name);
    }
    map['chapter_id'] = Variable<int>(chapter_id);
    map['section_id'] = Variable<int>(section_id);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || preface != null) {
      map['preface'] = Variable<String>(preface);
    }
    if (!nullToAbsent || number != null) {
      map['number'] = Variable<String>(number);
    }
    if (!nullToAbsent || sort_order != null) {
      map['sort_order'] = Variable<int>(sort_order);
    }
    return map;
  }

  SectionCompanion toCompanion(bool nullToAbsent) {
    return SectionCompanion(
      id: Value(id),
      book_id: Value(book_id),
      book_name: book_name == null && nullToAbsent
          ? const Value.absent()
          : Value(book_name),
      chapter_id: Value(chapter_id),
      section_id: Value(section_id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      preface: preface == null && nullToAbsent
          ? const Value.absent()
          : Value(preface),
      number:
          number == null && nullToAbsent ? const Value.absent() : Value(number),
      sort_order: sort_order == null && nullToAbsent
          ? const Value.absent()
          : Value(sort_order),
    );
  }

  factory SectionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SectionData(
      id: serializer.fromJson<int>(json['id']),
      book_id: serializer.fromJson<int>(json['book_id']),
      book_name: serializer.fromJson<String?>(json['book_name']),
      chapter_id: serializer.fromJson<int>(json['chapter_id']),
      section_id: serializer.fromJson<int>(json['section_id']),
      title: serializer.fromJson<String?>(json['title']),
      preface: serializer.fromJson<String?>(json['preface']),
      number: serializer.fromJson<String?>(json['number']),
      sort_order: serializer.fromJson<int?>(json['sort_order']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'book_id': serializer.toJson<int>(book_id),
      'book_name': serializer.toJson<String?>(book_name),
      'chapter_id': serializer.toJson<int>(chapter_id),
      'section_id': serializer.toJson<int>(section_id),
      'title': serializer.toJson<String?>(title),
      'preface': serializer.toJson<String?>(preface),
      'number': serializer.toJson<String?>(number),
      'sort_order': serializer.toJson<int?>(sort_order),
    };
  }

  SectionData copyWith(
          {int? id,
          int? book_id,
          Value<String?> book_name = const Value.absent(),
          int? chapter_id,
          int? section_id,
          Value<String?> title = const Value.absent(),
          Value<String?> preface = const Value.absent(),
          Value<String?> number = const Value.absent(),
          Value<int?> sort_order = const Value.absent()}) =>
      SectionData(
        id: id ?? this.id,
        book_id: book_id ?? this.book_id,
        book_name: book_name.present ? book_name.value : this.book_name,
        chapter_id: chapter_id ?? this.chapter_id,
        section_id: section_id ?? this.section_id,
        title: title.present ? title.value : this.title,
        preface: preface.present ? preface.value : this.preface,
        number: number.present ? number.value : this.number,
        sort_order: sort_order.present ? sort_order.value : this.sort_order,
      );
  @override
  String toString() {
    return (StringBuffer('SectionData(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sort_order: $sort_order')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, book_id, book_name, chapter_id,
      section_id, title, preface, number, sort_order);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SectionData &&
          other.id == this.id &&
          other.book_id == this.book_id &&
          other.book_name == this.book_name &&
          other.chapter_id == this.chapter_id &&
          other.section_id == this.section_id &&
          other.title == this.title &&
          other.preface == this.preface &&
          other.number == this.number &&
          other.sort_order == this.sort_order);
}

class SectionCompanion extends UpdateCompanion<SectionData> {
  final Value<int> id;
  final Value<int> book_id;
  final Value<String?> book_name;
  final Value<int> chapter_id;
  final Value<int> section_id;
  final Value<String?> title;
  final Value<String?> preface;
  final Value<String?> number;
  final Value<int?> sort_order;
  final Value<int> rowid;
  const SectionCompanion({
    this.id = const Value.absent(),
    this.book_id = const Value.absent(),
    this.book_name = const Value.absent(),
    this.chapter_id = const Value.absent(),
    this.section_id = const Value.absent(),
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sort_order = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SectionCompanion.insert({
    required int id,
    required int book_id,
    this.book_name = const Value.absent(),
    required int chapter_id,
    required int section_id,
    this.title = const Value.absent(),
    this.preface = const Value.absent(),
    this.number = const Value.absent(),
    this.sort_order = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        book_id = Value(book_id),
        chapter_id = Value(chapter_id),
        section_id = Value(section_id);
  static Insertable<SectionData> custom({
    Expression<int>? id,
    Expression<int>? book_id,
    Expression<String>? book_name,
    Expression<int>? chapter_id,
    Expression<int>? section_id,
    Expression<String>? title,
    Expression<String>? preface,
    Expression<String>? number,
    Expression<int>? sort_order,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (book_id != null) 'book_id': book_id,
      if (book_name != null) 'book_name': book_name,
      if (chapter_id != null) 'chapter_id': chapter_id,
      if (section_id != null) 'section_id': section_id,
      if (title != null) 'title': title,
      if (preface != null) 'preface': preface,
      if (number != null) 'number': number,
      if (sort_order != null) 'sort_order': sort_order,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SectionCompanion copyWith(
      {Value<int>? id,
      Value<int>? book_id,
      Value<String?>? book_name,
      Value<int>? chapter_id,
      Value<int>? section_id,
      Value<String?>? title,
      Value<String?>? preface,
      Value<String?>? number,
      Value<int?>? sort_order,
      Value<int>? rowid}) {
    return SectionCompanion(
      id: id ?? this.id,
      book_id: book_id ?? this.book_id,
      book_name: book_name ?? this.book_name,
      chapter_id: chapter_id ?? this.chapter_id,
      section_id: section_id ?? this.section_id,
      title: title ?? this.title,
      preface: preface ?? this.preface,
      number: number ?? this.number,
      sort_order: sort_order ?? this.sort_order,
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
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (preface.present) {
      map['preface'] = Variable<String>(preface.value);
    }
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (sort_order.present) {
      map['sort_order'] = Variable<int>(sort_order.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SectionCompanion(')
          ..write('id: $id, ')
          ..write('book_id: $book_id, ')
          ..write('book_name: $book_name, ')
          ..write('chapter_id: $chapter_id, ')
          ..write('section_id: $section_id, ')
          ..write('title: $title, ')
          ..write('preface: $preface, ')
          ..write('number: $number, ')
          ..write('sort_order: $sort_order, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$SectionDatabase extends GeneratedDatabase {
  _$SectionDatabase(QueryExecutor e) : super(e);
  late final $SectionTable section = $SectionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [section];
}
