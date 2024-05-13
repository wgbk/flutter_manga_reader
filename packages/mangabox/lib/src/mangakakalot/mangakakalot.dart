import 'package:mangabox/mangabox.dart';
import 'package:mangabox/src/mangabox.dart';

class MangakakalotDatasource extends MangaboxDatasource {
  MangakakalotDatasource({super.client})
      : super(
          name: 'MangaKakalot',
          baseUrl: MBConsts.mangakakalotBaseUrl,
          referer: 'https://chapmanganato.to/',
          supportSimpleQuery: true,
        );

  @override
  RequestPropsRecord popularUrlPath(int page) {
    return (
      pathSegments: ['manga_list'],
      queryParameters: {
        'type': 'topview',
        'category': 'all',
        'state': 'all',
        'page': page.toString(),
      },
    );
  }

  @override
  RequestPropsRecord latestUrlPath(int page) {
    return (
      pathSegments: ['manga_list'],
      queryParameters: {
        'type': 'latest',
        'category': 'all',
        'state': 'all',
        'page': page.toString(),
      },
    );
  }
}
