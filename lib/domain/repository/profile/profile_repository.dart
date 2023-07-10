import '../../../base/result_entity/result_entity.dart';
import '../../base/authentication_headers_request.dart';
import '../../model/data/profile/profile_data.dart';

abstract class ProfileRepository {
  Future<ResultEntity<ProfileData>> fetchProfile(
    AuthenticationHeadersRequest header,
  );
}
