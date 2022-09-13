import 'package:ecommerce/app/data/providers/user_provider/user_provider.dart';

abstract class HomePageProvider {
  static Future<dynamic> getUsers() async {
    try {
      final result = await UserProvider.getUsers();
      return result;
    } catch (error) {
      rethrow;
    }
  }
}
