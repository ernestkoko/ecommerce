import 'package:ecommerce/app/data/providers/user_provider/user_provider.dart';

abstract class PostCommentPageProvider {
  static Future<dynamic> getPostComments({required int id}) async {
    try {
      final result = await UserProvider.getPostComments(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
