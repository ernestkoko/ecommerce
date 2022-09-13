import 'package:ecommerce/app/data/models/post_comment.dart';
import 'package:ecommerce/app/modules/post_comments_module/post_comment_page_provider.dart';
import 'package:get/get.dart';

class PostCommentPageController extends GetxController
    with StateMixin<List<PostComment>> {
  late final int id;

  @override
  void onInit() {
    super.onInit();

    id = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
    _getPostComments();
  }

  _getPostComments() async {
    final comments = <PostComment>[];
    try {
      change(comments, status: RxStatus.loading());
      final response = await PostCommentPageProvider.getPostComments(id: id);
      for (final map in response) {
        comments.add(PostComment.fromMap(map));
      }
      change(comments, status: RxStatus.success());
      if (comments.isEmpty) {
        change(comments, status: RxStatus.empty());
      }
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }
}
