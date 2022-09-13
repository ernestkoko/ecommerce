import 'package:ecommerce/app/modules/post_module/post_page_controller.dart';
import 'package:get/get.dart';

class PostPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(PostPageController());
  }

}