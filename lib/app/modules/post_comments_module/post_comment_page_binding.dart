import 'package:ecommerce/app/modules/post_comments_module/post_comment_page_controller.dart';
import 'package:get/get.dart';

class PostCommentPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PostCommentPageController());
  }
}
