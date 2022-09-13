import 'package:ecommerce/app/data/providers/user_provider/user_provider.dart';

abstract class PostDetailsPageProvider {
  static Future<dynamic> getPost({required int id}) async {
    try {
      final result = await UserProvider.getPost(id: id);
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
