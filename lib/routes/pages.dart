import 'package:ecommerce/app/modules/create_post_module/create_post_page.dart';
import 'package:ecommerce/app/modules/create_post_module/create_post_page_binding.dart';
import 'package:ecommerce/app/modules/home_page_module/home_page.dart';
import 'package:ecommerce/app/modules/home_page_module/home_page_binding.dart';
import 'package:ecommerce/app/modules/post_comments_module/post_comment_page_binding.dart';
import 'package:ecommerce/app/modules/post_details_module/post_details_page.dart';
import 'package:ecommerce/app/modules/post_details_module/post_details_page_binding.dart';
import 'package:ecommerce/app/modules/post_module/post_page_binding.dart';
import 'package:ecommerce/app/modules/todo_module/todo_page.dart';
import 'package:ecommerce/routes/routes.dart';
import 'package:get/get.dart';

import '../app/modules/post_comments_module/post_comment_page.dart';
import '../app/modules/post_module/post_page.dart';
import '../app/modules/todo_module/todo_page_binding.dart';

abstract class Pages {
  static final pages = [
    GetPage(
        name: Routes.initialRoute,
        page: () => const HomePage(),
        binding: HomePageBinding()),
    GetPage(
      name: Routes.todoPage,
      page: () => const TodoPage(),
      binding: TodoPageBinding(),
    ),
    GetPage(
      name: Routes.postPage,
      page: () => const PostPage(),
      binding: PostPageBinding(),
    ),
    GetPage(
      name: Routes.postDetailsPage,
      page: () => const PostDetailsPage(),
      binding: PostDetailsPageBinding(),
    ),
    GetPage(
      name: Routes.postCommentPage,
      page: () => const PostCommentsPage(),
      binding: PostCommentPageBinding(),
    ),
    GetPage(
      name: Routes.createPostPage,
      page: () =>const  CreatePostPage(),
      binding: CreatePostPageBinding(),
    )
  ];
}
