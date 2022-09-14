import 'package:ecommerce/app/data/providers/user_provider/user_provider.dart';

abstract class CreatePostPageProvider {
  static Future<dynamic> createPost(
      {required String title, required String body}) async {
    try {
      final result = await UserProvider.createPost(title: title, body: body);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  static Future<dynamic> editPost(
      {required int id, required String body, required String title}) async {
    try {
      final result =
          await UserProvider.editPost(id: id, title: title, body: body);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
