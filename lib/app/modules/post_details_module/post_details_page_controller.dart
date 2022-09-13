import 'package:ecommerce/app/data/models/post_details.dart';
import 'package:ecommerce/app/modules/post_details_module/post_details_page_provider.dart';
import 'package:ecommerce/routes/routes.dart';
import 'package:get/get.dart';

class PostDetailsPageController extends GetxController
    with StateMixin<PostDetails> {
  late final int id;

  @override
  void onInit() {
    id = Get.arguments;
    super.onInit();
  }

  @override
  void onReady() {
    _getPost();
    super.onReady();
  }

  _getPost() async {
    late PostDetails? post;
    try {
      change(null, status: RxStatus.loading());
      final response = await PostDetailsPageProvider.getPost(id: id);
      post = PostDetails.fromMap(response);

      change(post, status: RxStatus.success());
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }

  navigateToPostCommentsPage() {
    Get.toNamed(Routes.postCommentPage, arguments: id);
  }
}
