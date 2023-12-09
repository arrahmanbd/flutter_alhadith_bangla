import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:alhadith/src/core/exception.dart';
import 'package:alhadith/src/database/data/chapters/chapter_data.dart';
import 'package:alhadith/src/database/data/hadith/hadith_data.dart';
import 'package:alhadith/src/database/data/section/section_data.dart';

import '../data/books/book_database.dart';

class DataBaseRepositiry {
  final BookDatabase hadithBook;
  final ChapterDatabase chapters;
  final HadithDatabase hadish;
  final SectionDatabase section;

  DataBaseRepositiry(
    this.hadithBook,
    this.chapters,
    this.hadish,
    this.section,
  );

  //Get All Book Records
  Future<List<Book>> fetchAllBooks() async {
    try {
      return await hadithBook.select(hadithBook.books).get();
    } catch (e) {
      throw DataFetchException(e.toString(), innerError: e);
    }
  }

//Get all chapters accoroding to book_id
  Future<List<ChapterData>> fetchbyBook(int bookid) async {
    try {
      final data = await (chapters.select(chapters.chapter)
            ..where((tbl) => tbl.book_id.equals(bookid)))
          .get();
      return data;
    } catch (e) {
      throw DataFetchException(e.toString(), innerError: e);
    }
  }

//Getting hadish accoroding to chapter and book id
  Future<List<HadithData>> getDetails(int chapterID, int bookID) async {
    try {
      final data = await (hadish.select(hadish.hadith)
            ..where((tbl) => tbl.book_id.equals(bookID))
            ..where((tbl) => tbl.chapter_id.equals(chapterID))
            ..where((tbl) => tbl.hadith_id.isNotNull()) //filter null
            ..orderBy([
              (tbl) => OrderingTerm(expression: tbl.hadith_id),
            ]))
          .get();
      return data;
    } catch (e) {
      throw DataFetchException(e.toString(), innerError: e);
    }
  }

//Fetch all data from section using chapter id.
//Then showing data accoroding to section id in hadith details
//In hadish destails we will get a section_id. that will be the index of of single item.
//Example:
//chapter 1 has 6 section but 7 hadis. In hadishpage, section 3 are called two times
//That's why we can grab them accoroding to section_id if we get the list and simply negative one can show the data
//So we dont need to query and creating new data class for this database relation in this test
  Future<List<SectionData>> sectionByChapter(int chapterId) async {
    try {
      final data = await (section.select(section.section)
            ..where((tbl) => tbl.chapter_id.equals(chapterId))
            ..where((tbl) => tbl.section_id.isNotNull()))
          .get();
      return data;
    } catch (e) {
      throw DataFetchException(e.toString(), innerError: e);
    }
  }
}

final databaseProvider = Provider<DataBaseRepositiry>((ref) {
  final books = BookDatabase();
  final chapters = ChapterDatabase();
  final hadish = HadithDatabase();
  final section = SectionDatabase();
  return DataBaseRepositiry(books, chapters, hadish, section);
});
