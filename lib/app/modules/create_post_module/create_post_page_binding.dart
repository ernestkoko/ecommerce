import 'package:ecommerce/app/modules/create_post_module/create_post_page_controller.dart';
import 'package:get/get.dart';

class CreatePostPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(CreatePostPageController());
  }

}