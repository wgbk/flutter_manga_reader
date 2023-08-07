import 'package:flutter/material.dart';
import 'package:flutter_manga_reader/core/core.dart';
import 'package:flutter_manga_reader/core/models/reading_direction.dart';
import 'package:flutter_manga_reader/features/chapter_viewer/controllers/reading_direction_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReadingDirectionPopupMenuButton extends ConsumerWidget {
  const ReadingDirectionPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(readingDirectionControllerProvider);

    return PopupMenuButton<ReadingDirection>(
      initialValue: initialValue,
      itemBuilder: (context) {
        return [
          for (final v in ReadingDirection.values)
            PopupMenuItem(
              value: v,
              child: Text(v.localized(context.strings)),
            ),
        ];
      },
      onSelected: (direction) {
        ref
            .read(readingDirectionControllerProvider.notifier)
            .setDirection(direction);
      },
      child: const Icon(Icons.phone_android_sharp),
    );
  }
}
