import 'package:ecommerce/app/data/providers/user_provider/user_provider_interface.dart';

class UserProvider {
  static final _userProviderInterface = UserProviderInterface.instance;

  static Future<dynamic> getUsers() async {
    try {
      final result = await _userProviderInterface.getUsers();
      return result;
    } catch (error) {
      rethrow;
    }
  }

  static Future<dynamic> getTodo({required int id}) async {
    try {
      final result = await _userProviderInterface.getTodo(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }
  static Future<dynamic> getPosts({required int id}) async {
    try {
      final result = await _userProviderInterface.getPosts(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  static Future<dynamic> getPostComments({required int id}) async {
    try {
      final result = await _userProviderInterface.getPostComments(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  static Future<dynamic> getPost({required int id}) async {
    try {
      final result = await _userProviderInterface.getPost(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
