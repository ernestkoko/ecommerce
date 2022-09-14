import 'package:ecommerce/app/data/providers/user_provider/user_provider.dart';

abstract class PostPageProvider {
  static Future<dynamic> getPosts({required int id}) async {
    try {
      final result = await UserProvider.getPosts(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }

  static Future<dynamic> deletePost({required int id}) async {
    try {
      final result = await UserProvider.deletePost(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
