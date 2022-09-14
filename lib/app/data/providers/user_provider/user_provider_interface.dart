import 'package:ecommerce/app/data/providers/user_provider/user_provider_server.dart';

abstract class UserProviderInterface {
  static UserProviderInterface _instance = UserProviderServer();

  static UserProviderInterface get instance => _instance;

  ///Use this if you want to dynamically set the instance
  static set instance(UserProviderInterface instance) {
    _instance = instance;
  }

  Future<dynamic> getUsers() async {
    throw UnimplementedError("getUsers not implemented");
  }

  Future<dynamic> getTodo({required int id}) async {
    throw UnimplementedError("getTodo not implemented");
  }

  Future<dynamic> getPosts({required int id}) async {
    throw UnimplementedError("getPosts not implemented");
  }

  Future<dynamic> getPostComments({required int id}) async {
    throw UnimplementedError("getPostComments not implemented");
  }

  Future<dynamic> getPost({required int id}) async {
    throw UnimplementedError("getPostComments not implemented");
  }

  Future<dynamic> createPost(
      {required String title, required String body}) async {
    throw UnimplementedError("createPost now implemented");
  }

  Future<dynamic> editPost(
      {required int id, required String title, required String body}) async {
    throw UnimplementedError("editPost not implemented");
  }

  Future<dynamic> deletePost({required int id}) async {
    throw UnimplementedError("deletePost not implemented");
  }
}
