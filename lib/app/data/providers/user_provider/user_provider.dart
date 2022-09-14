import 'package:ecommerce/app/data/providers/user_provider/user_provider_interface.dart';

/// The class that provides functionalities to the other parts of the app

class UserProvider {
  static final _userProviderInterface = UserProviderInterface.instance;

  ///[getUsers] gets all the users from the remote server
  static Future<dynamic> getUsers() async {
    try {
      final result = await _userProviderInterface.getUsers();
      return result;
    } catch (error) {
      rethrow;
    }
  }

  ///[getTodo] gets all the todos from the remote server
  ///[id] is the id for the user
  static Future<dynamic> getTodo({required int id}) async {
    try {
      final result = await _userProviderInterface.getTodo(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  ///[getPosts] gets all the posts from the remote server with the user [id]
  static Future<dynamic> getPosts({required int id}) async {
    try {
      final result = await _userProviderInterface.getPosts(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  ///[getPostComments] gets all the comments under a post with the the user [id]
  static Future<dynamic> getPostComments({required int id}) async {
    try {
      final result = await _userProviderInterface.getPostComments(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }


  ///[getPost] gets a particular post with the post [id]
  static Future<dynamic> getPost({required int id}) async {
    try {
      final result = await _userProviderInterface.getPost(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  static Future<dynamic> createPost(
      {required String title, required String body}) async {
    try {
      final result =
          await _userProviderInterface.createPost(title: title, body: body);
      return result;
    } catch (error) {
      rethrow;
    }
  }

 static Future<dynamic> editPost(
      {required int id, required String title, required String body}) async {
    try {
      final result = await _userProviderInterface.editPost(
          id: id, title: title, body: body);
      return result;
    } catch (error) {
      rethrow;
    }
  }

 static Future<dynamic> deletePost({required int id}) async {
    try {
      final result = await _userProviderInterface.deletePost(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
