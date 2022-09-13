import 'package:ecommerce/app/modules/post_details_module/post_details_page_controller.dart';
import 'package:get/get.dart';

class PostDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PostDetailsPageController());
  }
}
