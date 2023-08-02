import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:manga_reader_core/src/models/source_chapter.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required int id,
    required int mangaId,
    // Source data
    required String url,
    required String name,
    @Default(0) int dateUpload,
    @Default(0.0) double chapterNumber,
    String? scanlator,
    // Model data
    @Default(false) bool read,
    @Default(false) bool bookmark,
    @Default(0) int lastPageRead,
    @Default(0) int dateFetch,
    @Default(0) int lastModified,
  }) = _Chapter;

  /// Used to create model from the database entity.
  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  const Chapter._();

  SourceChapter toSourceModel() => SourceChapter.fromJson(toJson());
}
