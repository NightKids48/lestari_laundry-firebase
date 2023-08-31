import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/profile/name_data.dart';

abstract class NameDataRepository {
  Future<ResultEntity<NameData>> fetchNameData(
    AuthenticationHeadersRequest header,
  );
}
