import 'package:ecommerce/app/data/models/user.dart';
import 'package:ecommerce/app/modules/home_page_module/home_page_provider.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class HomePageController extends GetxController with StateMixin<List<User>> {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getUsers();
    super.onReady();
  }

  void getUsers() async {
    final list = <User>[];
    try {
      change(list, status: RxStatus.loading());
      final result = await HomePageProvider.getUsers() as List;
      for(var map in result  ){
        print("MAP::: $map");
        final user = User.fromMap(map);
        print("USER::: $user");
       list.add( User.fromMap(map));
      }
      change(list, status: RxStatus.success());
      print("RESULT::::: $list");
    } catch (error) {
      print("ERROR::: ${error.toString()}");
      change(null, status: RxStatus.error(error.toString()));
    }
  }


  navigateToTodoPage({required int id}){
    Get.toNamed(Routes.todoPage, arguments: id);

  }

  navigateToBlogPost({required int id}){
    Get.toNamed(Routes.postPage, arguments: id);
  }
}
