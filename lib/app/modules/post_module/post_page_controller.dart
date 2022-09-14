import 'package:ecommerce/app/data/models/post.dart';
import 'package:ecommerce/app/modules/post_module/post_page_provider.dart';
import 'package:ecommerce/app/widgets/dialogs.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class PostPageController extends GetxController with StateMixin<List<Post>> {
  late final int id;
  final _posts = <Post>[];

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments;
  }

  @override
  void onReady() {
    getPosts();
    super.onReady();
  }

  getPosts() async {
    try {
      final response = await PostPageProvider.getPosts(id: id);
      for (final map in response) {
        _posts.add(Post.fromMap(map));
      }
      change(_posts, status: RxStatus.success());
      if (_posts.isEmpty) {
        change(_posts, status: RxStatus.empty());
      }
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }

  deletePost({required int id}) async {
    try {
      final index = _posts.indexWhere((element) => element.id == id);
      final post = _posts.firstWhere((element) => element.id == id);
      post.loading = true;
      change(_posts, status: RxStatus.success());

      final result = await PostPageProvider.deletePost(id: id);

      _posts.removeAt(index);

      change(_posts, status: RxStatus.success());

      notificationDialog(
          title: "Deleted", middleText: "Post deleted successfully");
    } catch (error) {
      errorNotificationDialog(middleText: error.toString());
    }
  }

  navigateToPostDetailsPage({required int id}) {
    Get.toNamed(Routes.postDetailsPage, arguments: id);
  }

  navigateToCreatePostPage() {
    Get.toNamed(Routes.createPostPage, arguments: {"create": true});
  }

  navigateToEditPost({required int id}) {
    final post = _posts.firstWhere((Post post) => post.id == id);
    Get.toNamed(Routes.createPostPage,
        arguments: {"create": false, "post": post});
  }
}
