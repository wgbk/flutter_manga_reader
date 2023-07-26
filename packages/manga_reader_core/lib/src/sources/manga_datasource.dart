import 'package:manga_reader_core/src/http_client/http_client.dart';
import 'package:manga_reader_core/src/models/paginated_response.dart';
import 'package:manga_reader_core/src/models/result.dart';

abstract class MangaDatasource {
  Future<Result<MangasPage, HttpError>> fetchMangas();
}
