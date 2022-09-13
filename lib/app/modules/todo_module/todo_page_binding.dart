import 'package:ecommerce/app/modules/todo_module/todo_page_controller.dart';
import 'package:get/get.dart';

class TodoPageBinding extends Bindings{
  @override
  void dependencies() {
  Get.put(TodoPageController());
  }

}