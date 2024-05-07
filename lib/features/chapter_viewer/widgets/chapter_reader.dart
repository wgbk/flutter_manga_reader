import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/chapter_page_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/reading_direction_controller.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/continuous_reader.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/widgets/single_page_reader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:manga_reader_core/manga_reader_core.dart';

class ChapterReader extends ConsumerWidget {
  const ChapterReader({
    super.key,
    required this.mangaId,
    required this.controller,
    required this.pages,
  });

  final int mangaId;
  final ChapterPageController controller;
  final List<ChapterPage> pages;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(readingDirectionControllerProvider(mangaId));

    return value.when(
      data: (readingDirection) {
        return switch (readingDirection.isContinuous) {
          true => ContinuousReader(
              controller: controller,
              reverse: readingDirection.reverse,
              scrollDirection: readingDirection.direction,
              pages: pages,
            ),
          false => SinglePageReader(
              controller: controller,
              reverse: readingDirection.reverse,
              scrollDirection: readingDirection.direction,
              pages: pages,
            ),
        };
      },
      error: (error, stack) => Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
