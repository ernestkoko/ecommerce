import 'package:ecommerce/app/data/models/post.dart';
import 'package:ecommerce/app/modules/post_module/post_page_provider.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class PostPageController extends GetxController with StateMixin<List<Post>> {
  late final int id;

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments;
  }

  @override
  void onReady() {
    _getPosts();
    super.onReady();
  }

  _getPosts() async {
    final posts = <Post>[];
    try {
      final response = await PostPageProvider.getPosts(id: id);
      for (final map in response) {
        posts.add(Post.fromMap(map));
      }
      change(posts, status: RxStatus.success());
      if (posts.isEmpty) {
        change(posts, status: RxStatus.empty());
      }
    } catch (error) {
      change(null, status: RxStatus.error(error.toString()));
    }
  }

  navigateToPostDetailsPage({required int id}) {
    Get.toNamed(Routes.postDetailsPage, arguments: id);
  }
}
