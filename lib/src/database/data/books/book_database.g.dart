// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_database.dart';

// ignore_for_file: type=lint
class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _title_arMeta =
      const VerificationMeta('title_ar');
  @override
  late final GeneratedColumn<String> title_ar = GeneratedColumn<String>(
      'title_ar', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _number_of_hadisMeta =
      const VerificationMeta('number_of_hadis');
  @override
  late final GeneratedColumn<int> number_of_hadis = GeneratedColumn<int>(
      'number_of_hadis', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _abvr_codeMeta =
      const VerificationMeta('abvr_code');
  @override
  late final GeneratedColumn<String> abvr_code = GeneratedColumn<String>(
      'abvr_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _book_nameMeta =
      const VerificationMeta('book_name');
  @override
  late final GeneratedColumn<String> book_name = GeneratedColumn<String>(
      'book_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _book_descrMeta =
      const VerificationMeta('book_descr');
  @override
  late final GeneratedColumn<String> book_descr = GeneratedColumn<String>(
      'book_descr', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _color_codeMeta =
      const VerificationMeta('color_code');
  @override
  late final GeneratedColumn<String> color_code = GeneratedColumn<String>(
      'color_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        title_ar,
        number_of_hadis,
        abvr_code,
        book_name,
        book_descr,
        color_code
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'books';
  @override
  VerificationContext validateIntegrity(Insertable<Book> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('title_ar')) {
      context.handle(_title_arMeta,
          title_ar.isAcceptableOrUnknown(data['title_ar']!, _title_arMeta));
    } else if (isInserting) {
      context.missing(_title_arMeta);
    }
    if (data.containsKey('number_of_hadis')) {
      context.handle(
          _number_of_hadisMeta,
          number_of_hadis.isAcceptableOrUnknown(
              data['number_of_hadis']!, _number_of_hadisMeta));
    } else if (isInserting) {
      context.missing(_number_of_hadisMeta);
    }
    if (data.containsKey('abvr_code')) {
      context.handle(_abvr_codeMeta,
          abvr_code.isAcceptableOrUnknown(data['abvr_code']!, _abvr_codeMeta));
    } else if (isInserting) {
      context.missing(_abvr_codeMeta);
    }
    if (data.containsKey('book_name')) {
      context.handle(_book_nameMeta,
          book_name.isAcceptableOrUnknown(data['book_name']!, _book_nameMeta));
    } else if (isInserting) {
      context.missing(_book_nameMeta);
    }
    if (data.containsKey('book_descr')) {
      context.handle(
          _book_descrMeta,
          book_descr.isAcceptableOrUnknown(
              data['book_descr']!, _book_descrMeta));
    } else if (isInserting) {
      context.missing(_book_descrMeta);
    }
    if (data.containsKey('color_code')) {
      context.handle(
          _color_codeMeta,
          color_code.isAcceptableOrUnknown(
              data['color_code']!, _color_codeMeta));
    } else if (isInserting) {
      context.missing(_color_codeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Book map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Book(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      title_ar: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ar'])!,
      number_of_hadis: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number_of_hadis'])!,
      abvr_code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}abvr_code'])!,
      book_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_name'])!,
      book_descr: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}book_descr'])!,
      color_code: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color_code'])!,
    );
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(attachedDatabase, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String title;
  final String title_ar;
  final int number_of_hadis;
  final String abvr_code;
  final String book_name;
  final String book_descr;
  final String color_code;
  const Book(
      {required this.id,
      required this.title,
      required this.title_ar,
      required this.number_of_hadis,
      required this.abvr_code,
      required this.book_name,
      required this.book_descr,
      required this.color_code});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['title_ar'] = Variable<String>(title_ar);
    map['number_of_hadis'] = Variable<int>(number_of_hadis);
    map['abvr_code'] = Variable<String>(abvr_code);
    map['book_name'] = Variable<String>(book_name);
    map['book_descr'] = Variable<String>(book_descr);
    map['color_code'] = Variable<String>(color_code);
    return map;
  }

  BooksCompanion toCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: Value(id),
      title: Value(title),
      title_ar: Value(title_ar),
      number_of_hadis: Value(number_of_hadis),
      abvr_code: Value(abvr_code),
      book_name: Value(book_name),
      book_descr: Value(book_descr),
      color_code: Value(color_code),
    );
  }

  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      title_ar: serializer.fromJson<String>(json['title_ar']),
      number_of_hadis: serializer.fromJson<int>(json['number_of_hadis']),
      abvr_code: serializer.fromJson<String>(json['abvr_code']),
      book_name: serializer.fromJson<String>(json['book_name']),
      book_descr: serializer.fromJson<String>(json['book_descr']),
      color_code: serializer.fromJson<String>(json['color_code']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'title_ar': serializer.toJson<String>(title_ar),
      'number_of_hadis': serializer.toJson<int>(number_of_hadis),
      'abvr_code': serializer.toJson<String>(abvr_code),
      'book_name': serializer.toJson<String>(book_name),
      'book_descr': serializer.toJson<String>(book_descr),
      'color_code': serializer.toJson<String>(color_code),
    };
  }

  Book copyWith(
          {int? id,
          String? title,
          String? title_ar,
          int? number_of_hadis,
          String? abvr_code,
          String? book_name,
          String? book_descr,
          String? color_code}) =>
      Book(
        id: id ?? this.id,
        title: title ?? this.title,
        title_ar: title_ar ?? this.title_ar,
        number_of_hadis: number_of_hadis ?? this.number_of_hadis,
        abvr_code: abvr_code ?? this.abvr_code,
        book_name: book_name ?? this.book_name,
        book_descr: book_descr ?? this.book_descr,
        color_code: color_code ?? this.color_code,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('title_ar: $title_ar, ')
          ..write('number_of_hadis: $number_of_hadis, ')
          ..write('abvr_code: $abvr_code, ')
          ..write('book_name: $book_name, ')
          ..write('book_descr: $book_descr, ')
          ..write('color_code: $color_code')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, title_ar, number_of_hadis,
      abvr_code, book_name, book_descr, color_code);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.title == this.title &&
          other.title_ar == this.title_ar &&
          other.number_of_hadis == this.number_of_hadis &&
          other.abvr_code == this.abvr_code &&
          other.book_name == this.book_name &&
          other.book_descr == this.book_descr &&
          other.color_code == this.color_code);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> title_ar;
  final Value<int> number_of_hadis;
  final Value<String> abvr_code;
  final Value<String> book_name;
  final Value<String> book_descr;
  final Value<String> color_code;
  final Value<int> rowid;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.title_ar = const Value.absent(),
    this.number_of_hadis = const Value.absent(),
    this.abvr_code = const Value.absent(),
    this.book_name = const Value.absent(),
    this.book_descr = const Value.absent(),
    this.color_code = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BooksCompanion.insert({
    required int id,
    required String title,
    required String title_ar,
    required int number_of_hadis,
    required String abvr_code,
    required String book_name,
    required String book_descr,
    required String color_code,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        title_ar = Value(title_ar),
        number_of_hadis = Value(number_of_hadis),
        abvr_code = Value(abvr_code),
        book_name = Value(book_name),
        book_descr = Value(book_descr),
        color_code = Value(color_code);
  static Insertable<Book> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? title_ar,
    Expression<int>? number_of_hadis,
    Expression<String>? abvr_code,
    Expression<String>? book_name,
    Expression<String>? book_descr,
    Expression<String>? color_code,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (title_ar != null) 'title_ar': title_ar,
      if (number_of_hadis != null) 'number_of_hadis': number_of_hadis,
      if (abvr_code != null) 'abvr_code': abvr_code,
      if (book_name != null) 'book_name': book_name,
      if (book_descr != null) 'book_descr': book_descr,
      if (color_code != null) 'color_code': color_code,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BooksCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? title_ar,
      Value<int>? number_of_hadis,
      Value<String>? abvr_code,
      Value<String>? book_name,
      Value<String>? book_descr,
      Value<String>? color_code,
      Value<int>? rowid}) {
    return BooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      title_ar: title_ar ?? this.title_ar,
      number_of_hadis: number_of_hadis ?? this.number_of_hadis,
      abvr_code: abvr_code ?? this.abvr_code,
      book_name: book_name ?? this.book_name,
      book_descr: book_descr ?? this.book_descr,
      color_code: color_code ?? this.color_code,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (title_ar.present) {
      map['title_ar'] = Variable<String>(title_ar.value);
    }
    if (number_of_hadis.present) {
      map['number_of_hadis'] = Variable<int>(number_of_hadis.value);
    }
    if (abvr_code.present) {
      map['abvr_code'] = Variable<String>(abvr_code.value);
    }
    if (book_name.present) {
      map['book_name'] = Variable<String>(book_name.value);
    }
    if (book_descr.present) {
      map['book_descr'] = Variable<String>(book_descr.value);
    }
    if (color_code.present) {
      map['color_code'] = Variable<String>(color_code.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('title_ar: $title_ar, ')
          ..write('number_of_hadis: $number_of_hadis, ')
          ..write('abvr_code: $abvr_code, ')
          ..write('book_name: $book_name, ')
          ..write('book_descr: $book_descr, ')
          ..write('color_code: $color_code, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$BookDatabase extends GeneratedDatabase {
  _$BookDatabase(QueryExecutor e) : super(e);
  late final $BooksTable books = $BooksTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [books];
}
