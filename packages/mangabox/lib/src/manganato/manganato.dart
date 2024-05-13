import 'package:mangabox/mangabox.dart';
import 'package:mangabox/src/mangabox.dart';

class ManganatoDatasource extends MangaboxDatasource {
  ManganatoDatasource({super.client})
      : super(
          name: 'Manganato',
          baseUrl: MBConsts.manganatoBaseUrl,
          referer: 'https://chapmanganato.to/',
        );

  @override
  RequestPropsRecord popularUrlPath(int page) {
    return (
      pathSegments: ['genre-all', '$page'],
      queryParameters: {'type': 'topview'},
    );
  }

  @override
  RequestPropsRecord latestUrlPath(int page) {
    return (
      pathSegments: ['genre-all', '$page'],
      queryParameters: null,
    );
  }

  @override
  String advancedSearchQuery(int page, String query) {
    return Uri(
      pathSegments: ['advanced_search'],
      queryParameters: {'page': '$page', 'keyw': normalizeSearchQuery(query)},
    ).toString();
  }
}
