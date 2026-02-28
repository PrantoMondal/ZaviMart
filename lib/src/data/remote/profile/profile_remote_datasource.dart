import 'package:zavi_mart/src/data/model/user.dart';

abstract class ProfileRemoteDatasource {
  Future<User> getProfile({required int userId});
}
