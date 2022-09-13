import 'package:ecommerce/app/data/providers/user_provider/user_provider.dart';

abstract class TodoPageProvider{
  static Future<dynamic> getTodo({required int id})async{
    try{
      final result =await UserProvider.getTodo(id: id);
      return result;
    }catch(error){
      rethrow;
    }
  }
}