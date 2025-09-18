import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:test_task_eclipt/repository/exception/remote_exception.dart';
import 'package:test_task_eclipt/repository/model/update_user_request.dart';
import 'package:test_task_eclipt/repository/model/user_model.dart';
import 'package:test_task_eclipt/service/logger_service.dart';
import 'package:test_task_eclipt/service/mixin/firestore_collection.dart';

class UserRepository with FirestoreCollections {
  UserRepository({required LoggerService logger}) : _logger = logger;

  final LoggerService _logger;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<UserModel> getUserInfo(String uid) async {
    try {
      final doc = await _firestore.collection(usersCol).doc(uid).get();
      final model = UserModel.fromJson(doc.data() ?? {});
      _logger.d('User data is fetched from $usersCol/$uid}');
      return model;
    } catch (e) {
      _logger.e('User data fetch error from $usersCol/$uid}: ${e.toString()}');
      throw const RemoteException();
    }
  }

  Future<void> updateUser(UpdateUserRequest req, String uid) async {
    try {
      await _firestore.collection(usersCol).doc(uid).update(req.toJson());
      _logger.d('User data is updated in $usersCol/$uid');
    } catch (e) {
      _logger.e('User data update error from $usersCol/$uid}: ${e.toString()}');
      throw const RemoteException();
    }
  }
}
