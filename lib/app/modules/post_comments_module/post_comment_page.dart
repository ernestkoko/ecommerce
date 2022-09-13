import 'package:ecommerce/app/widgets/app_bar.dart';
import 'package:ecommerce/app/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'post_comment_page_controller.dart';

class PostCommentsPage extends GetView<PostCommentPageController> {
  const PostCommentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Post Comments",
      ),
      body: SafeArea(
        child: Container(
          child: controller.obx(
            (state) => ListView.builder(
              itemCount: state!.length,
              itemBuilder: (BuildContext ctx, int index) => CustomCard(
                id: state[index].id.toString(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${state[index].name}",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${state[index].email}",
                      style: const TextStyle(fontSize: 10),
                    ),
                    Text(
                      "${state[index].body}",
                      style: TextStyle(
                          fontSize: 12, color: Get.theme.primaryColor),
                    ),
                    Text(
                      "${state[index].postId}",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
